part of 'scannerdata_cubit.dart';

@immutable
sealed class ScannerDataState {
  final bool scanned;
  final List<Barcode> barcodes;

  const ScannerDataState(this.barcodes, this.scanned);
}

final class ScannerDataInitial extends ScannerDataState {
  ScannerDataInitial() : super([], false);
}

final class ScannerDataProcessed extends ScannerDataState {
  ScannerDataProcessed(List<Barcode> barcodes, scanned) : super(barcodes, scanned);
}
