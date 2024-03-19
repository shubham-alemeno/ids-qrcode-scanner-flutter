import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ids_qrcode_scanner/features/home/bloc/network_bloc.dart';
import 'package:ids_qrcode_scanner/features/home/presentation/home_page.dart';

class AppBuilder extends StatelessWidget {
  const AppBuilder({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => NetworkBloc()..add(NetworkObserve()),
          ),
        ],
        child: const HomePage(),
      )
    );
  }
}
