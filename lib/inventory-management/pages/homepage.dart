import 'package:flutter/material.dart';
import '../components/navigation_drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
            Center(
              child: Text('Biểu đồ'),
            ),
            Center(
              child: Text('Tiến độ sx'),
            ),
            Center(
              child: Text('Tiến độ nhập kho'),
            ),
            Center(
              child: Text('Tiến độ giao hàng'),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget TextWidget({
  required String text,
  Color? color,
  double? fontSize,
}) {
  return Text(
    text,
    style: TextStyle(color: color, fontSize: fontSize),
  );
}
