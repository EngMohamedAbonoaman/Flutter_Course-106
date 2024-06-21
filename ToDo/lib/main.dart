import 'package:flutter/material.dart';
import 'package:todo3/network/DB.dart';
import 'package:todo3/screens/add_task_screen.dart';
import 'package:todo3/screens/home_screen.dart';
import 'package:todo3/screens/responsive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBRepo.initializeDB();
  await DBRepo.executeQuery("tasks");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveScreen(),
    );
  }
}
