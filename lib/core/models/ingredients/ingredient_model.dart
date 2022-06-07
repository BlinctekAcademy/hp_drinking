class Ingredinet {
  Ingredinet({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  factory Ingredinet.fromJson(Map<String, dynamic> json) => Ingredinet(
        id: json["id"],
        name: json["name"],
      );
}
