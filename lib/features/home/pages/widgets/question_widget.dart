import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hp_drinking/core/models/questions/question_model.dart';
import 'package:hp_drinking/features/home/bloc/home_bloc.dart';
import 'package:hp_drinking/features/home/data/fetch_data.dart';
import 'package:hp_drinking/features/home/pages/widgets/drink_text.dart';

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({Key? key}) : super(key: key);

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  late Future<Questions> futureQuestion;
  late HomeBloc bloc;
  @override
  void initState() {
    super.initState();
    bloc = Modular.get<HomeBloc>();
    futureQuestion = fetchQuestions();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: Column(
        children: [
          FutureBuilder<Questions>(
            future: futureQuestion,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Text(
                      snapshot.data!.question,
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    GestureDetector(
                      onTap: () => _verifyResponse(
                        resposta: snapshot.data!.a,
                        correta: snapshot.data!.answer,
                      ),
                      child: AnswerWidget(
                        text: snapshot.data!.a,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _verifyResponse(
                        resposta: snapshot.data!.b,
                        correta: snapshot.data!.answer,
                      ),
                      child: AnswerWidget(
                        text: snapshot.data!.b,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _verifyResponse(
                        resposta: snapshot.data!.c,
                        correta: snapshot.data!.answer,
                      ),
                      child: AnswerWidget(
                        text: snapshot.data!.c,
                      ),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text(
                  '${snapshot.error}',
                  style: const TextStyle(fontSize: 20, color: Colors.red),
                );
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
          const SizedBox(
            height: 60,
          ),
          BlocBuilder<HomeBloc, HomeState>(
            bloc: bloc,
            builder: (context, state) {
              if (state is QuestionCorrect) {
                return const AlertPopUp(
                  title: 'Ihhhaaaa',
                  subtitle: Text(
                      'You are almost a Ravenclaw! Pass someone a shot ',
                      style: TextStyle(color: Colors.red)),
                );
              } else if (state is QuestionWrong) {
                return const AlertPopUp(
                  title: 'You are not ready for Hogwarts! Drink a shot now ',
                  subtitle: DrinkText(),
                );
              }

              return const Text(
                'Choose one!',
                style: TextStyle(
                  color: Colors.white,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  void _verifyResponse({
    required String resposta,
    required String correta,
  }) {
    if (resposta == correta) {
      bloc.add(MakeChoiceEvent(choice: true));
    } else {
      bloc.add(MakeChoiceEvent(choice: false));
    }
  }
}

class AlertPopUp extends StatelessWidget {
  const AlertPopUp({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final Widget subtitle;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: subtitle,
      actions: <Widget>[
        TextButton(
          onPressed: () => Modular.to.pop(),
          child: const Text('OK'),
        ),
      ],
    );
  }
}

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 40,
      child: Card(
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
