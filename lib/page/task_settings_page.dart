import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskSettingsPage extends StatelessWidget {
  const TaskSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}