import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/view/todo_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: TodoScreen(),
      defaultTransition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    );
  }
}
