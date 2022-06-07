import 'package:flutter/material.dart';
import 'package:hp_drinking/shared/themes/app_gradients.dart';
import 'package:hp_drinking/shared/themes/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

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
