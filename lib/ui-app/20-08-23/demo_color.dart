import 'package:flutter/material.dart';

class DemoColor extends StatelessWidget {
  const DemoColor({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double containerWidth = screenWidth / 3;
    double containerHeight = screenHeight / 3;

    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Color.fromARGB(212, 239, 46, 32),
                  width: containerWidth,
                  height: containerHeight,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Color.fromARGB(213, 228, 228, 49),
                  width: containerWidth,
                  height: containerHeight,
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Color.fromARGB(202, 81, 235, 38),
                  width: containerWidth,
                  height: containerHeight,
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
