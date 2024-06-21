import 'package:flutter/material.dart';
import 'package:todo3/network/DB.dart';
import 'package:todo3/shared/app_colors.dart';
import 'package:todo3/shared/app_style.dart';
import 'package:todo3/widgets/build_task_item.dart';

class AllTasksScreen extends StatelessWidget {
  const AllTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: DBRepo.myTasks.length,
      itemBuilder: (context, index) {
        return BuildTaskItem(
          title: DBRepo.myTasks[index]['title'],
          subTitle: DBRepo.myTasks[index]['description'],
          status: DBRepo.myTasks[index]['status'],
        );
      },
    );
  }
}
