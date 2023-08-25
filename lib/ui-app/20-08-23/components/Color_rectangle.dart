import 'package:flutter/material.dart';

class ColorRectangle extends StatelessWidget {
  // properties
  final Color color;
  final double? width;
  final double? height;
  final MainAxisAlignment alignItem;

  // init function
  ColorRectangle(
      {required this.color, this.height, this.width, required this.alignItem});

// render function
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: alignItem,
        children: [
          Container(
            color: color,
            width: width,
            height: height,
          ),
        ],
      ),
    );
  }
}
