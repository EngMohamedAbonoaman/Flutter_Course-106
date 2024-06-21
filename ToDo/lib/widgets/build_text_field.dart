import 'package:flutter/material.dart';

import '../shared/app_style.dart';

class BuildTextFormField extends StatelessWidget {
  BuildTextFormField(
      {super.key,
      required this.title,
      required this.hint,
      required this.height,
      required this.controller});
  String title;
  String hint;
  double height;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:
              AppStyle.mediumStyle.copyWith(color: Colors.black, fontSize: 18),
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(height),
              hintText: hint,
              hintStyle: AppStyle.smallStyle
                  .copyWith(fontSize: 14, color: Colors.black.withOpacity(0.6)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
      ],
    );
  }
}
