import 'package:flutter/material.dart';
import 'package:task_manager/page/logo_page.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '人生好難',
      home: LogoPage(),
    );
  }
}