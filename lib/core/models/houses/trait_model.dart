class Traits {
  final String id;
  final String name;

  Traits({
    required this.id,
    required this.name,
  });

  factory Traits.fromJson(Map<String, dynamic> json) =>
      Traits(id: json['id'], name: json['name']);
}
