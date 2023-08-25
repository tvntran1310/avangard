import 'package:flutter/material.dart';
import 'components/Color_rectangle.dart';

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
          ColorRectangle(
            color: Color.fromARGB(212, 239, 46, 32),
            width: containerWidth,
            height: containerHeight,
            alignItem: MainAxisAlignment.start,
          ),
          ColorRectangle(
            color: Color.fromARGB(213, 228, 228, 49),
            width: containerWidth,
            height: containerHeight,
            alignItem: MainAxisAlignment.center,
          ),
          ColorRectangle(
            color: Color.fromARGB(202, 81, 235, 38),
            width: containerWidth,
            height: containerHeight,
            alignItem: MainAxisAlignment.end,
          )
        ]),
      ),
    );
  }
}
