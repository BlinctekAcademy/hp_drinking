import 'dart:async';
import 'dart:convert';
import 'package:hp_drinking/core/models/drinks/drink_model.dart';
import 'package:hp_drinking/core/models/questions/question_model.dart';
import 'package:http/http.dart' as http;

Future<Questions> fetchQuestions() async {
  final response = await http.get(
    Uri.parse(
      'https://hp-drinking.herokuapp.com/question',
    ),
  );

  if (response.statusCode == 200) {
    return Questions.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load Question');
  }
}

Future<Drink> fetchRandomDrinks() async {
  final response = await http.get(
    Uri.parse(
      'https://www.thecocktaildb.com/api/json/v1/1/random.php',
    ),
  );

  if (response.statusCode == 200) {
    return Drink.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load Drink');
  }
}
