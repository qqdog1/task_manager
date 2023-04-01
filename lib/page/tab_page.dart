import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_manager/dto/bar.dart';
import 'package:task_manager/page/summary_page.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  _TabPage createState() => _TabPage();
}

class _TabPage extends State<TabPage> with SingleTickerProviderStateMixin {
  // 建立一個 TabController
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Summary'),
        bottom: TabBar(
          controller: _tabController, // 使用 TabController
          tabs: const [
            Tab(text: "分頁一"),
            Tab(text: "分頁二"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        // 定義 Tab 對應的內容
        children: const [
          // 第一個 Tab 對應的內容
          SummaryPage(),
          // 第二個 Tab 對應的內容
          Center(
            child: Text('This is Tab 2'),
          ),
        ],
      ),
    );
  }
}