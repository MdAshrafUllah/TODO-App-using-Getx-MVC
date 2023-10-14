import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controller/task_controller.dart';
import 'package:todo_app/view/add_task_screen.dart';

import 'task_title.dart';

class TodoScreen extends StatelessWidget {
   TodoScreen({super.key});

  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    TextTheme text = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("TODO App"),centerTitle: true,),
        body: Obx(() => (taskController.taskList.isEmpty)? Center(child: Text("No Task Found"),):  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
              itemCount: taskController.taskList.length,
              itemBuilder: (context, index) => TaskTitle(size: size, text: text, des: taskController.taskList[index].task, time: taskController.taskList[index].taskCreated,
                press: (){
                  taskController.deleteTask(taskController.taskList[index]);
                },)),
        ),),


        floatingActionButton: FloatingActionButton(
          onPressed: ()=> Get.to(AddTaskScreen()),
          backgroundColor: Colors.deepPurple,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}


