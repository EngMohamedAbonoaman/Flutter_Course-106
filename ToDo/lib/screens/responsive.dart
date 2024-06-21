import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 400,
          child: LayoutBuilder(
            builder: (context, constrains) => Row(
              children: [
                Container(
                  width: constrains.maxWidth * .2,
                  height: 100,
                  color: Colors.deepOrange,
                  child: Text(""),
                ),
                Container(
                  width: constrains.maxWidth * .4,
                  height: 100,
                  color: Colors.black,
                  child: Text(""),
                ),
                Container(
                  width: constrains.maxWidth * .3,
                  height: 100,
                  color: Colors.amber,
                  child: Text(""),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
