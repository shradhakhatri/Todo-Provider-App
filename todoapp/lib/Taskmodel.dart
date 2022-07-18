import 'package:flutter/material.dart';

class Taskmodel {
  String title;
  String detail;

  String get gettitle => title;
  String get getdetail => detail;

  Taskmodel(this.title, this.detail);
}
