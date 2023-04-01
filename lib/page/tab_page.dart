import 'package:flutter/material.dart';
import 'package:task_manager/page/daily_summary_page.dart';
import 'package:task_manager/page/notification_page.dart';
import 'package:task_manager/page/settings_page.dart';
import 'package:task_manager/page/task_settings_page.dart';
import 'package:task_manager/page/total_sumary_page.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  _TabPage createState() => _TabPage();
}

class _TabPage extends State<TabPage> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const DailySummaryPage(),
    const TaskSettingsPage(),
    const NotificationPage(),
    const TotalSummaryPage(),
    const SettingsPage(),
  ];

  final List<BottomNavigationBarItem> _navItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ''),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
    const BottomNavigationBarItem(icon: Icon(Icons.alarm), label: ''),
    const BottomNavigationBarItem(icon: Icon(Icons.view_list), label: ''),
    const BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: _navItems,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}