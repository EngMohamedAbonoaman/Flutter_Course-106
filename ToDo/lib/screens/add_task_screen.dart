import 'package:flutter/material.dart';
import 'package:todo3/network/DB.dart';
import 'package:todo3/shared/app_colors.dart';
import 'package:todo3/shared/app_string.dart';
import 'package:todo3/shared/app_style.dart';
import 'package:todo3/widgets/buid_button.dart';
import 'package:todo3/widgets/build_text_field.dart';

class AddTaskScreen extends StatefulWidget {
  AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController idController = TextEditingController();

  TextEditingController titleController = TextEditingController();

  TextEditingController descController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColor.secondColor,
        title: Text(
          AppString.AddTaskTitle,
          style: AppStyle.largeStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            BuildTextFormField(
              controller: idController,
              title: "ID",
              hint: "Enter Task ID...",
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            BuildTextFormField(
              controller: titleController,
              title: "Title",
              hint: "Enter Task Title...",
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            BuildTextFormField(
              controller: descController,
              title: "Details",
              hint: "Enter Task Details...",
              height: 60,
            ),
            SizedBox(
              height: 20,
            ),
            isLoading
                ? Center(child: CircularProgressIndicator())
                : BuildButton(
                    title: "Add",
                    onPressed: () {
                      setState(() {
                        isLoading = true;
                      });
                      DBRepo.insert(
                        id: int.parse(idController.text),
                        title: titleController.text,
                        description: descController.text,
                        status: 0,
                      ).then((value) {
                        setState(() {
                          isLoading = false;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Task Added",
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ),
                        );
                      }).catchError((onError) {
                        print(onError.toString());
                      });
                    })
          ],
        ),
      ),
    );
  }
}
