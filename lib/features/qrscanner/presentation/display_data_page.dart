import 'package:flutter/material.dart';
import 'package:ids_qrcode_scanner/features/qrscanner/data/models.dart';

class ScannerDataPage extends StatefulWidget {
  // const ScannerDataPage(this.notifyIsMountedFn, {super.key, required this.barcodes});
  const ScannerDataPage({super.key, required this.barcodes});

  // final Function() notifyIsMountedFn;

  final List<Appointment> barcodes;

  @override
  State<ScannerDataPage> createState() => _ScannerDataPageState();
}

class _ScannerDataPageState extends State<ScannerDataPage> {
  @override
  void initState() {
    super.initState();
    // Notify FirstRoute after paint
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   widget.notifyIsMountedFn();
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scanner Data'),
      ),
      body: Center(
        child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(widget.barcodes[index].customerEmail),
                subtitle: Text(widget.barcodes[index].customerFirstName),
              );
            },
            itemCount: widget.barcodes.length),
      ),
    );
  }
}
