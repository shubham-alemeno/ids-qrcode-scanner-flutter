import 'package:flutter/material.dart';
import 'package:ids_qrcode_scanner/features/qrscanner/data/models.dart';
import 'package:ids_qrcode_scanner/features/qrscanner/widgets/data_display_widget.dart';

class ScannerDataPage extends StatelessWidget {
  // const ScannerDataPage(this.notifyIsMountedFn, {super.key, required this.barcodes});
  const ScannerDataPage({super.key, required this.barcodes});

  // final Function() notifyIsMountedFn;

  final List<Appointment> barcodes;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Scanner Data'),
        ),
        body: Center(
          child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return DataDisplayWidget(listItem: barcodes[index]);
              },
              itemCount: barcodes.length),
        ),
      ),
    );
  }
}
