class Heads {
  String id;
  String firstName;
  String lastName;

  Heads({required this.id, required this.firstName, required this.lastName});

  factory Heads.fromJson(Map<String, dynamic> json) => Heads(
        id: json['id'],
        firstName: json['firstName'],
        lastName: json['lastName'],
      );
}
