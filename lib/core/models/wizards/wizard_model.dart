class Wizards {
  Wizards({
    required this.elixirs,
    required this.id,
    required this.firstName,
    required this.lastName,
  });

  final List<SimpleElixir> elixirs;
  final String id;
  final String firstName;
  final String lastName;

  factory Wizards.fromJson(Map<String, dynamic> json) => Wizards(
        elixirs: List<SimpleElixir>.from(
            json["elixirs"].map((x) => SimpleElixir.fromJson(x))),
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
      );
}

class SimpleElixir {
  SimpleElixir({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  factory SimpleElixir.fromJson(Map<String, dynamic> json) => SimpleElixir(
        id: json["id"],
        name: json["name"],
      );
}
