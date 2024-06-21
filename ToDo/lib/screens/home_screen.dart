import 'package:flutter/material.dart';
import 'package:todo3/network/DB.dart';
import 'package:todo3/screens/add_task_screen.dart';
import 'package:todo3/screens/all_tasks.dart';
import 'package:todo3/screens/complete_screen.dart';
import 'package:todo3/shared/app_colors.dart';
import 'package:todo3/shared/app_string.dart';
import 'package:todo3/shared/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myIndex = 0;
  List<Widget> screens = [AllTasksScreen(), CompleteScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColor.secondColor,
        title: Text(
          AppString.HomeTitle,
          style: AppStyle.largeStyle,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddTaskScreen()));
        },
        backgroundColor: AppColor.secondColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: screens[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "All"),
          BottomNavigationBarItem(icon: Icon(Icons.check), label: "Complete"),
        ],
        currentIndex: myIndex,
        onTap: (index) {
          print(index);
          setState(() {
            myIndex = index;
          });
        },
      ),
    );
  }
}
