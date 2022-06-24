import 'package:flutter_modular/flutter_modular.dart';
import 'package:hp_drinking/features/game_module.dart';
import 'package:hp_drinking/features/splash/splash_page.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const SplashPage(),
        ),
        ModuleRoute<dynamic>(
          '/home/',
          module: GameModule(),
        ),
      ];
}
