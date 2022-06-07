import 'package:hp_drinking/core/models/houses/head_model.dart';
import 'package:hp_drinking/core/models/houses/trait_model.dart';

class House {
  final String id;
  final String name;
  final String houseColours;
  final String founder;
  final String animal;
  final String element;
  final String ghost;
  final String commonRoom;
  final List<Heads> heads;
  final List<Traits> traits;

  House({
    required this.id,
    required this.name,
    required this.houseColours,
    required this.founder,
    required this.animal,
    required this.element,
    required this.ghost,
    required this.commonRoom,
    required this.heads,
    required this.traits,
  });

  factory House.fromJson(Map<String, dynamic> json) => House(
        id: json['id'],
        name: json['name'],
        houseColours: json['houseColours'],
        founder: json['founder'],
        animal: json['animal'],
        element: json['element'],
        ghost: json['ghost'],
        commonRoom: json['commonRoom'],
        heads: List<Heads>.from(json["heads"].map((x) => Heads.fromJson(x))),
        traits:
            List<Traits>.from(json["traits"].map((x) => Traits.fromJson(x))),
      );
}
