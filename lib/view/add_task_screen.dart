import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controller/task_controller.dart';
class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({super.key});

  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    TextTheme text = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(automaticallyImplyLeading: true, title: const Text("TODO App"),centerTitle: true,),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const Spacer(flex: 3,),
              Text("Add New Task",style: text.headlineSmall,),
              const Spacer(flex: 1,),
              TextField(
                controller: taskController.textEditingController,
                decoration: InputDecoration(
                  hintText: "Enter Task",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.deepPurple, width: 2.0),
                    borderRadius: BorderRadius.circular(5),
                  )
                ),
              ),
              const SizedBox(height: 25,),
              InkWell(
                onTap: (){
                  taskController.addTask();
                  Get.back();
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.deepPurple,
                  ),
                  child: Center(child: Text("Add Task",style: text.labelLarge!.copyWith(color: Colors.white),)),
                ),
              ),
              const Spacer(flex: 3,)
            ],
          ),
        ),
      ),
    );
  }
}
