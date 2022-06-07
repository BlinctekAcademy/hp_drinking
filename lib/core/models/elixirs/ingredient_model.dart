class Ingredient {
  Ingredient({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        id: json["id"],
        name: json["name"],
      );
}
