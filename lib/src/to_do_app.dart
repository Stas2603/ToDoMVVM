import 'package:flutter/material.dart';
import 'package:to_do/src/presentation/features/main_screen/main_screen_view.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}
