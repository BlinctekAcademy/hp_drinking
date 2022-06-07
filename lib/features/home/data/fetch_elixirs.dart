import 'dart:async';
import 'dart:convert';
import 'package:hp_drinking/core/models/drinks/drink_model.dart';
import 'package:http/http.dart' as http;

import 'package:hp_drinking/core/models/elixirs/elixir_model.dart';

Future<Elixirs> fetchElixirs() async {
  final response = await http.get(
    Uri.parse(
      'https://wizard-world-api.herokuapp.com/Elixirs/0106fb32-b00d-4d70-9841-4b7c2d2cca71',
    ),
  );

  if (response.statusCode == 200) {
    return Elixirs.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load elixir');
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
    throw Exception('Failed to load elixir');
  }
}
