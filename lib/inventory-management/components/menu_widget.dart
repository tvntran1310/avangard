import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: ListView(
          children: <Widget>[
            // SizedBox(
            //   height: 25,
            // ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Image(
                image: AssetImage(
                  'lib/images/thaco/LOGO_INDUSTRIES.png',
                ),
                height: MediaQuery.of(context).size.width - 350,
                width: MediaQuery.of(context).size.width - 350,
                fit: BoxFit.contain,
              ),
            ),
            MenuItem(text: 'Trang chủ', icon: Icons.house, fontSize: 15),
            MenuItem(text: 'Mua hàng', icon: Icons.shopping_cart, fontSize: 15),
            MenuItem(text: 'Sản xuất', icon: Icons.gps_fixed, fontSize: 15),
            MenuItem(text: 'Quản lý kho', icon: Icons.inventory, fontSize: 15),
            MenuItem(text: 'Báo cáo', icon: Icons.report, fontSize: 15),
            MenuItem(text: 'Hệ thống', icon: Icons.settings, fontSize: 15)
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget MenuItem({
  required String text,
  required IconData icon,
  required double fontSize,
  VoidCallback? onClicked,
}) {
  final color = Color.fromARGB(255, 0, 0, 0);
  const hoverColor = Colors.black87;

  return ListTile(
    leading: Icon(icon),
    title: Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
      ),
    ),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}
