import 'package:flutter/material.dart';
import 'package:namer_app/inventory-management/components/navigation_drawer_widget.dart';
import 'package:namer_app/inventory-management/utils/widget-utils.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: TextWidget(
            text: 'Cấu hình',
            color: Colors.black,
            alignment: Alignment.centerLeft),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: TextWidget(text: 'Cấu hình', alignment: Alignment.center),
    );
  }
}
