import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hp_drinking/core/shared/themes/app_gradients.dart';
import 'package:hp_drinking/core/shared/themes/app_images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Modular.to.pushReplacementNamed('/home');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: AppGradients.linear,
          ),
          child: Center(
            child: Image.asset(
              AppImages.logo,
            ),
          ),
        ),
      ),
    );
  }
}
