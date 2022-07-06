import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InstructionsPage extends StatefulWidget {
  InstructionsPage({Key? key}) : super(key: key);

  @override
  State<InstructionsPage> createState() => _InstructionsPageState();
}

class _InstructionsPageState extends State<InstructionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 116, 0, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/icons/logohp.png',
            height: 300,
            width: 200,
          ),
          const Center(
            child: Text(
              "Choose a card",
              style: TextStyle(
                  fontSize: 45,
                  color: Color.fromARGB(255, 238, 186, 48),
                  fontFamily: "HarryP"),
            ),
          ),
          const Center(
            child: Text(
              "Answer the questions by choosing one of the alternatives",
              style: TextStyle(
                  fontSize: 45,
                  color: Color.fromARGB(255, 238, 186, 48),
                  fontFamily: "HarryP"),
            ),
          ),
          const Center(
            child: Text(
              "If you get it right, choose someone to drink a shot",
              style: TextStyle(
                  fontSize: 45,
                  color: Color.fromARGB(255, 238, 186, 48),
                  fontFamily: "HarryP"),
            ),
          ),
          const Center(
            child: Text(
              "If you get it wrong, you drink a shot",
              style: TextStyle(
                  fontSize: 45,
                  color: Color.fromARGB(255, 238, 186, 48),
                  fontFamily: "HarryP"),
            ),
          ),
          Center(
              child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
            ),
            onPressed: () {
              Modular.to.pushReplacementNamed('/home/home_page');
            },
            child: const Text(
              "Play",
              style: TextStyle(
                fontSize: 70,
                color: Color.fromARGB(255, 238, 186, 48),
                fontFamily: "HarryP",
              ),
            ),
          )),
        ],
      ),
    );
  }
}
