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
    List<String> list = [
      'Biểu đồ',
      'Tiến độ sx',
      'Tiến độ nhập kho',
      'Tiến độ giao hàng'
    ];
    // List<Widget> tabs =
    //     list.map((name) => TextWidget(text: name, color: blackColor)).toList();

    List<Widget> renderTabItems() {
      return list
          .map((name) => TextWidget(text: name, color: blackColor))
          .toList();
    }

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // drawer
        drawer: NavigationDrawerWidget(),
        // appbar
        appBar: AppBar(
          bottom: TabBar(tabs: renderTabItems()),
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
          children: renderTabItems(),
        ),
      ),
    );
  }
}
