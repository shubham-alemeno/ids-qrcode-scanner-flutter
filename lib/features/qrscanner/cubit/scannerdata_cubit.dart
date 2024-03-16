import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:ids_qrcode_scanner/features/qrscanner/data/models.dart';
import 'package:meta/meta.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

part 'scannerdata_state.dart';

class ScannerDataCubit extends Cubit<ScannerDataState> {
  ScannerDataCubit() : super(ScannerDataInitial());

  void resetData() {
    emit(ScannerDataInitial());
  }

  bool getScannedStatus() {
    return state.scanned;
  }

  void processData(List<Barcode> barcodes) {
    for (final barcode in barcodes) {
      debugPrint('Barcode found! ${barcode.rawValue}');
    }
    emit(ScannerDataProcessed(barcodes, true));
  }
}
