import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_manager/dto/bar.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  _SummaryPageState createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  List<Bar> dataList = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    String data = await rootBundle.loadString('assets/text/data.json');
    var lstJsonBar = jsonDecode(data) as List;
    dataList = lstJsonBar.map((barJson) => Bar.fromJson(barJson)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Summary'),
      ),
      body: dataList.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          final data = dataList[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.name),
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  value: data.completed / data.total,
                ),
                const SizedBox(height: 8),
                Text('${data.completed} / ${data.total}'),
              ],
            ),
          );
        },
      ),
    );
  }
}