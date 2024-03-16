import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ids_qrcode_scanner/features/qrscanner/cubit/scannerdata_cubit.dart';
import 'package:ids_qrcode_scanner/features/qrscanner/presentation/display_data_page.dart';
import 'package:ids_qrcode_scanner/features/qrscanner/widgets/scanner_error_handler.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRCodeScannerPage extends StatefulWidget {
  const QRCodeScannerPage({super.key});

  @override
  State<QRCodeScannerPage> createState() => _QRCodeScannerPageState();
}

class _QRCodeScannerPageState extends State<QRCodeScannerPage> {
  late MobileScannerController cameraController = MobileScannerController();

  @override
  void initState() {
    super.initState();
    initializeCameraController();
  }

  @override
  void deactivate() {
    log("deactivate called");
    cameraController.dispose();
    super.deactivate();
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('QR Code Scanner'),
          actions: [
            IconButton(
              color: Colors.white,
              icon: ValueListenableBuilder(
                valueListenable: cameraController.torchState,
                builder: (context, state, child) {
                  switch (state) {
                    case TorchState.off:
                      return const Icon(Icons.flash_off, color: Colors.grey);
                    case TorchState.on:
                      return const Icon(Icons.flash_on, color: Colors.yellow);
                  }
                },
              ),
              iconSize: 32.0,
              onPressed: () => cameraController.toggleTorch(),
            ),
            IconButton(
              color: Colors.black,
              icon: ValueListenableBuilder(
                valueListenable: cameraController.cameraFacingState,
                builder: (context, state, child) {
                  switch (state) {
                    case CameraFacing.front:
                      return const Icon(Icons.camera_front);
                    case CameraFacing.back:
                      return const Icon(Icons.camera_rear);
                  }
                },
              ),
              iconSize: 32.0,
              onPressed: () => cameraController.switchCamera(),
            ),
          ],
        ),
        body: BlocListener<ScannerDataCubit, ScannerDataState>(
          listenWhen: (previous, current) => previous != current,
          listener: (context, state) async {
            if (state is ScannerDataProcessed) {
              log("Push Called");
              await cameraController.stop();
              await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ScannerDataPage(barcodes: state.barcodes),
              ));
              await cameraController.start();
              // initializeCameraController();
            }
          },
          child: Stack(
            children: <Widget>[
                MobileScanner(
                controller: cameraController,
                errorBuilder: (BuildContext context, MobileScannerException error, Widget? child) {
                  return ScannerErrorWidget(error: error);
                },
                fit: BoxFit.contain,
                onDetect: (capture) {
                  if (context.read<ScannerDataCubit>().getScannedStatus() ==
                      false) {
                    final List<Barcode> barcodes = capture.barcodes;
                    // final Uint8List? image = capture.image;
                    context.read<ScannerDataCubit>().processData(barcodes);
                  } else {
                    log("Captured called");
                  }
                },
              ),
            ]
          ),
        ));
  }

  // Initialize the camera controller
  void initializeCameraController() {
    cameraController = MobileScannerController(
      detectionSpeed: DetectionSpeed.normal,
      facing: CameraFacing.back,
      torchEnabled: false,
    );
  }
}
