import 'package:flutter_modular/flutter_modular.dart';
import 'package:hp_drinking/features/home/bloc/home_bloc.dart';
import 'package:hp_drinking/features/home/pages/home_page.dart';
import 'package:hp_drinking/features/questions/pages/question_page.dart';

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
          child: (context, args) => const HomePage(),
        ),
        ChildRoute(
          '/question',
          child: (context, args) => const QuestionPage(),
        ),
      ];
}
