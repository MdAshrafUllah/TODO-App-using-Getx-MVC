
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/task.dart';

class TaskController extends GetxController{
  final _taskList = <Task>[].obs;

  List<Task> get taskList => _taskList.value;

  TextEditingController? textEditingController;

  @override
  void onInit(){
    super.onInit();
    textEditingController=TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    textEditingController!.clear();
  }

  void addTask(){
    String text = textEditingController!.text;
    DateTime dateTime = DateTime.now();

    _taskList.add(Task(text, dateTime.day.toString()));
    textEditingController!.text = "";
  }

  void deleteTask(Task task){
    _taskList.remove(task);
  }
}