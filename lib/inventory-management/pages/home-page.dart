import 'package:flutter/material.dart';
import '../components/navigation_drawer_widget.dart';
import '../utils/widget-utils.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:namer_app/inventory-management/models/bar-chart-model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<BarChartModel> listColumns = [
    BarChartModel(
      title: 'KHSX',
      financial: 55,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    BarChartModel(
      title: 'TTSX',
      financial: 11,
      color: charts.ColorUtil.fromDartColor(Colors.yellow),
    ),
    BarChartModel(
      title: 'KHGH',
      financial: 25,
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    BarChartModel(
      title: 'TTGH',
      financial: 64,
      color: charts.ColorUtil.fromDartColor(Colors.grey),
    )
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: 'financial',
        data: listColumns,
        domainFn: (BarChartModel series, _) => series.title,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];

    const blackColor = Colors.black;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // drawer
        drawer: NavigationDrawerWidget(),
        // appbar
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              TextWidget(text: 'Biểu đồ', color: blackColor),
              TextWidget(text: 'Tiến độ sx', color: blackColor),
              TextWidget(text: 'Tiến độ nhập kho', color: blackColor),
              TextWidget(text: 'Tiến độ giao hàng', color: blackColor),
            ],
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: blackColor,
          ),
          title: Text(
            'QUẢN LÝ KHO LKN',
            style: TextStyle(
              color: blackColor,
            ),
          ),
        ),

        // body
        body: TabBarView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              child: charts.BarChart(
                series,
                animate: true,
              ),
            ),
            Center(
              child: TextWidget(text: 'Tiến độ sx', fontSize: 35),
            ),
            Center(
              child: TextWidget(text: 'Tiến độ nhập kho', fontSize: 35),
            ),
            Center(
              child: TextWidget(text: 'Tiến độ giao hàng', fontSize: 35),
            ),
          ],
        ),
      ),
    );
  }
}
