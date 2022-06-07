import 'package:hp_drinking/core/models/elixirs/ingredient_model.dart';
import 'package:hp_drinking/core/models/elixirs/inventor_model.dart';
import 'package:hp_drinking/core/models/enum_values.dart';

class Elixirs {
  Elixirs({
    required this.id,
    required this.name,
    required this.effect,
    required this.sideEffects,
    required this.characteristics,
    required this.time,
    required this.difficulty,
    required this.ingredients,
    required this.inventors,
    required this.manufacturer,
  });

  final String? id;
  final String? name;
  final String? effect;
  final String? sideEffects;
  final String? characteristics;
  final String? time;
  final Difficulty? difficulty;
  final List<Ingredient>? ingredients;
  final List<Inventor>? inventors;
  final String? manufacturer;

  factory Elixirs.fromJson(Map<String, dynamic> json) => Elixirs(
        id: json["id"],
        name: json["name"],
        effect: json["effect"],
        sideEffects: json["sideEffects"],
        characteristics: json["characteristics"],
        time: json["time"],
        difficulty: difficultyValues.map[json["difficulty"]],
        ingredients: List<Ingredient>.from(
            json["ingredients"].map((x) => Ingredient.fromJson(x))),
        inventors: List<Inventor>.from(
            json["inventors"].map((x) => Inventor.fromJson(x))),
        manufacturer: json["manufacturer"],
      );
}
