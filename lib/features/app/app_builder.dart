import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ids_qrcode_scanner/features/home/bloc/network_bloc.dart';
import 'package:ids_qrcode_scanner/features/home/presentation/home_page.dart';
import 'package:ids_qrcode_scanner/features/splash/bloc/splash_bloc.dart';
import 'package:ids_qrcode_scanner/features/splash/presentation/splash_screen.dart';

class AppBuilder extends StatelessWidget {
  const AppBuilder({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => SplashBloc()..add(SetSplash()), child: const SplashScreen()),
          BlocProvider(
            create: (context) => NetworkBloc()..add(NetworkObserve()),
          ),
        ],
        child: BlocBuilder<SplashBloc, SplashState>(
          builder: (context, state) {
            if (state is SplashLoadedState) {
              return const HomePage();
            } else {
              return const SplashScreen();
            }
          },
        )
      )
    );
  }
}
