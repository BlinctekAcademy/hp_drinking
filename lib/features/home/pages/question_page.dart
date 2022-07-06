import 'package:flutter/material.dart';
import 'package:hp_drinking/features/home/widgets/question_widget.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Question',
          style: TextStyle(fontSize: 40, fontFamily: "HarryP"),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 55, 46, 41),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: const [
                Text(
                  'Hey, muggle!!',
                  style: TextStyle(
                    fontSize: 50,
                    color: Color.fromARGB(255, 240, 199, 94),
                    fontFamily: "HarryP",
                  ),
                ),
                SizedBox(height: 20),
                QuestionWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
