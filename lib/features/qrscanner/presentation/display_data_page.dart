import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ids_qrcode_scanner/features/qrscanner/cubit/scannerdata_cubit.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerDataPage extends StatelessWidget {
  const ScannerDataPage({super.key, required this.barcodes});

  final List<Barcode> barcodes;

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
          child: Text(barcodes.map((e) => e.rawValue).join('\n')),
        ),
      ),
    );
  }
}
