import 'package:flutter/material.dart';
import 'package:ids_qrcode_scanner/features/qrscanner/presentation/qr_scanner_page.dart';

class AppBuilder extends StatelessWidget {
  const AppBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QRCodeScannerPage(),
    );
  }
}