import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ids_qrcode_scanner/features/qrscanner/cubit/scannerdata_cubit.dart';
import 'package:ids_qrcode_scanner/features/qrscanner/presentation/qr_scanner_page.dart';

class AppBuilder extends StatelessWidget {
  const AppBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScannerDataCubit(),
      child: const MaterialApp(
        home: QRCodeScannerPage(),
      ),
    );
  }
}
