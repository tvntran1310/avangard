// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:namer_app/inventory-management/utils/widget-utils.dart';

// import 'package:namer_app/inventory-management/components/navigation_drawer_widget.dart';
// import 'package:namer_app/inventory-management/utils/widget-utils.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  String scannedBarcode = '';

  Future<void> scanBarcode() async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666', // Color for the scan button
      'Cancel', // Text for the cancel button
      true, // Show flash icon
      ScanMode.DEFAULT, // Scan mode (other options: QR, BARCODE)
    );

    setState(() {
      scannedBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(
          text: 'Barcode Scanner Example',
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Scanned Barcode: $scannedBarcode',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 219, 175, 175),
                ),
              ),
              onPressed: scanBarcode,
              child: Text(
                'Scan Barcode',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
