import 'package:flutter/material.dart';

import '../shared/app_colors.dart';
import '../shared/app_style.dart';

class BuildTaskItem extends StatelessWidget {
  BuildTaskItem(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.status});
  String title;
  String subTitle;
  int status;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: SizedBox(
        height: 110,
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      title,
                      style: AppStyle.mediumStyle,
                    ),
                    Text(
                      subTitle,
                      style: AppStyle.smallStyle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.edit,
                      color: AppColor.secondColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.delete_outline,
                      color: AppColor.secondColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      status == 1
                          ? Icons.check_box
                          : Icons.check_box_outline_blank,
                      color: AppColor.secondColor,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
