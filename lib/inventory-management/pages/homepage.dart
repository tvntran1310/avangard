import 'package:flutter/material.dart';
import '../components/navigation_drawer_widget.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//   static const appTitle = 'QUẢN LÝ KHO LKN';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 255, 255, 255),
//       appBar: AppBar(
//         title: Text(appTitle),
//       ),
//     );
//   }
// }

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
        title: Text('QUẢN LÝ KHO LKN'),
      ),
      // body
      body: Center(
        child: Text('HOME PAGE'),
      ),
    );
  }
}
