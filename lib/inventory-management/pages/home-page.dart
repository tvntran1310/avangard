import 'package:flutter/material.dart';
import '../components/navigation_drawer_widget.dart';
import '../utils/widget-utils.dart';

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
              child: TextWidget(text: 'Biểu đồ', fontSize: 35),
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
