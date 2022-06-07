import 'dart:convert';

class Inventor {
  Inventor({
    required this.id,
    required this.firstName,
    required this.lastName,
  });

  final String id;
  final String firstName;
  final String lastName;

  factory Inventor.fromRawJson(String str) =>
      Inventor.fromJson(json.decode(str));

  factory Inventor.fromJson(Map<String, dynamic> json) => Inventor(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
      );
}
