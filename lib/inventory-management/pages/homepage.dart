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
    return Scaffold(
      // drawer
      drawer: NavigationDrawerWidget(),
      // appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'QUẢN LÝ KHO LKN',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      // body
      body: Center(
        child: Text('HOME PAGE'),
      ),
    );
  }
}
