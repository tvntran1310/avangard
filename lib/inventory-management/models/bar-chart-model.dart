import 'package:charts_flutter/flutter.dart' as charts;
// ignore_for_file: file_names

class BarChartModel {
  String title;
  int financial;
  final charts.Color color;

  BarChartModel({
    required this.title,
    required this.financial,
    required this.color,
  });
}
