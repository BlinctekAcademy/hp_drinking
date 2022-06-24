import 'package:flutter/material.dart';
import 'package:hp_drinking/features/home/pages/widgets/question_widget.dart';

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
      appBar: AppBar(title: const Text('Question')),
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: const [
                Text(
                  'Hey, muggle!!',
                  style: TextStyle(fontSize: 35, color: Colors.white),
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
