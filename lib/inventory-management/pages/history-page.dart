import 'package:flutter/material.dart';
import 'package:namer_app/inventory-management/components/navigation_drawer_widget.dart';
import 'package:namer_app/inventory-management/utils/widget-utils.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: TextWidget(
            text: 'Lịch sử',
            color: Colors.black,
            alignment: Alignment.centerLeft),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: TextWidget(text: 'Lịch sử', alignment: Alignment.center),
    );
  }
}
