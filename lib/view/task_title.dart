

import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class TaskTitle extends StatelessWidget {
  const TaskTitle({
    super.key,
    required this.size,
    required this.text,
    required this.des,
    required this.time,
    required this.press,
  });

  final Size size;
  final TextTheme text;

  final String? time, des;
  final Callback? press;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: size.width * 0.1,
              height: double.maxFinite,
              color: Colors.deepPurple,
              child: Text("$time",style: text.headlineSmall!.copyWith(color: Colors.white),),
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("$des",style: text.titleLarge),
            )),
            GestureDetector(
              onTap: press,
              child: Container(
                color: Colors.red,
                width: size.width * 0.1,
                height: double.maxFinite,
                child: const Icon(Icons.delete,color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}