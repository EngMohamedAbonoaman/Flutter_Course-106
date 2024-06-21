import 'package:flutter/material.dart';

import '../network/DB.dart';
import '../widgets/build_task_item.dart';

class CompleteScreen extends StatefulWidget {
  CompleteScreen({super.key});

  @override
  State<CompleteScreen> createState() => _CompleteScreenState();
}

class _CompleteScreenState extends State<CompleteScreen> {
  List<Map<String, dynamic>> myTasks = [];
  @override
  void initState() {
    myTasks =
        DBRepo.myTasks.where((element) => element['status'] == 1).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myTasks.length,
      itemBuilder: (context, index) {
        return BuildTaskItem(
          title: myTasks[index]['title'],
          subTitle: myTasks[index]['description'],
          status: myTasks[index]['status'],
        );
      },
    );
  }
}
