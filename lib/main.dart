import 'package:flutter/material.dart';
import 'package:hp_drinking/app_module.dart';
import 'package:hp_drinking/my_app.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ModularApp(
      module: AppModule(),
      child: AppWidget(),
    ),
  );
}
