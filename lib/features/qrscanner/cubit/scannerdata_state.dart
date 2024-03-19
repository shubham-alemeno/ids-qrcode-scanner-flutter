part of 'scannerdata_cubit.dart';

@immutable
sealed class ScannerDataState {
  final bool scanned;
  final List<Appointment> barcodes;

  const ScannerDataState(this.barcodes, this.scanned);
}

final class ScannerDataInitial extends ScannerDataState {
  ScannerDataInitial() : super([], false);
}

final class ScannerDataProcessed extends ScannerDataState {
  ScannerDataProcessed(List<Appointment> barcodes, scanned) : super(barcodes, scanned);
}
