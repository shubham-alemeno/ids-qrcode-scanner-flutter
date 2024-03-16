import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ids_qrcode_scanner/features/qrscanner/cubit/scannerdata_cubit.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerDataPage extends StatefulWidget {
  // const ScannerDataPage(this.notifyIsMountedFn, {super.key, required this.barcodes});
  const ScannerDataPage({super.key, required this.barcodes});

  // final Function() notifyIsMountedFn;

  final List<Barcode> barcodes;

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
    return PopScope(
      onPopInvoked: (didPop) {
        if(didPop){
          context.read<ScannerDataCubit>().resetData();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Scanner Data'),
        ),
        body: Center(
          child: Text(widget.barcodes.map((e) => e.rawValue).join('\n')),
        ),
      ),
    );
  }
}
