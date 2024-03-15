import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

Widget CameraScanner() {
  return MobileScanner(
    controller: MobileScannerController(
      detectionSpeed: DetectionSpeed.normal,
      facing: CameraFacing.back,
      torchEnabled: false,
    ),
    onDetect: (capture) {
      final List<Barcode> barcodes = capture.barcodes;
      final Uint8List? image = capture.image;
      for (final barcode in barcodes) {
        debugPrint('Barcode found! ${barcode.rawValue}');
      }
    },
  );
}
