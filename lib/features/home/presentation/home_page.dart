import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ids_qrcode_scanner/features/home/bloc/network_bloc.dart';
import 'package:ids_qrcode_scanner/features/qrscanner/presentation/qr_code_scanner_wrapper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child:
              BlocBuilder<NetworkBloc, NetworkState>(builder: (context, state) {
            if (state is NetworkFailure) {
              return const Text("No Internet Connection");
            } else if (state is NetworkSuccess) {
              log("Connected to internet");
              return ElevatedButton.icon(
                  onPressed: () {
                    log("Button pressed");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QRCodePageWrapper()));
                  },
                  icon: const Icon(Icons.qr_code),
                  label: const Text('Scan QR Code'));
            } else {
              return const SizedBox.shrink();
            }
          }),
        ),
      ),
    );
  }
}
