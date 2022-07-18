import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Homepage.dart';
import 'Taskmodel.dart';
import 'Todomodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => TodoModel(),
        child: Homepage(),
      ),
    );
  }
}
