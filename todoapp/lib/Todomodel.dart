import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Taskmodel.dart';

class TodoModel extends ChangeNotifier {
  List<Taskmodel> Tasklist = [];

  addTaskInlist() {
    Taskmodel taskmodel = Taskmodel('title ${Tasklist.length}',
        'this is the task no detail ${Tasklist.length}');
    Tasklist.add(taskmodel);

    notifyListeners();
  }
}
