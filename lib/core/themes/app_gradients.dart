import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hp_drinking/core/themes/app_colors.dart';

class AppGradients {
  static const linear = LinearGradient(colors: [
    AppColors.ravenclawBlue,
    AppColors.ravenclawGold,
  ], stops: [
    0.0,
    0.695
  ], transform: GradientRotation(2.13959913 * pi));
}
