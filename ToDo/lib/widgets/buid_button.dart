import 'package:flutter/material.dart';

import '../shared/app_colors.dart';
import '../shared/app_style.dart';

class BuildButton extends StatelessWidget {
  BuildButton({super.key, required this.title, required this.onPressed});
  String title;
  Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColor.secondColor),
          ),
          onPressed: () {
            onPressed();
          },
          child: Text(
            title,
            style: AppStyle.largeStyle,
          ),
        ),
      ),
    );
  }
}
