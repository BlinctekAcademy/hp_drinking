import 'package:flutter_modular/flutter_modular.dart';
import 'package:hp_drinking/core/bloc/home_bloc.dart';
import 'package:hp_drinking/features/home/pages/home_page.dart';
import 'package:hp_drinking/features/home/pages/instructions_page.dart';
import 'package:hp_drinking/features/home/pages/question_page.dart';

class GameModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory(
          (i) => HomeBloc(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => InstructionsPage(),
        ),
        ChildRoute(
          '/home_page',
          child: (context, args) => const HomePage(),
        ),
        ChildRoute(
          '/question',
          child: (context, args) => const QuestionPage(),
        ),
      ];
}
