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
            MenuItem(
              text: 'Trang chủ',
              icon: Icons.house,
            ),
            MenuItem(
              text: 'Danh mục',
              icon: Icons.list,
            ),
            MenuItem(
              text: 'Mua hàng',
              icon: Icons.shopping_cart,
            ),
            MenuItem(
              text: 'Sản xuất',
              icon: Icons.gps_fixed,
            ),
            MenuItem(
              text: 'Quản lý kho',
              icon: Icons.inventory,
            ),
            MenuItem(
              text: 'Báo cáo',
              icon: Icons.report,
            ),
            MenuItem(
              text: 'Hệ thống',
              icon: Icons.settings,
            )
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
      ),
    ),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}
