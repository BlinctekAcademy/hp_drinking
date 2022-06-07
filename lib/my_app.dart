import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hp_drinking/features/home/pages/home_page.dart';
import 'package:hp_drinking/features/splash/splash_page.dart';
import 'package:hp_drinking/shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.background,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HP Drinking',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: AppColors.primary,
      ),
      initialRoute: "/home",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/home": (context) => const HomePage(),
        // "/login": (context) => LoginPage(),
        // "/barcode_scanner": (context) => BarcodeScannerPage(),
        // "/insert_boleto": (context) => InsertBoletoPage(
        //       barcode: ModalRoute.of(context) != null
        //           ? ModalRoute.of(context)!.settings.arguments.toString()
        //           : null,
        //     )
      },
    );
  }
}
