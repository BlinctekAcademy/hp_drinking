import 'dart:convert';

class Questions {
  Questions({
    required this.question,
    required this.a,
    required this.b,
    required this.c,
    required this.answer,
  });

  final String question;
  final String a;
  final String b;
  final String c;
  final String answer;

  factory Questions.fromRawJson(String str) =>
      Questions.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Questions.fromJson(Map<String, dynamic> json) => Questions(
        question: json["question"],
        a: json["a"],
        b: json["b"],
        c: json["c"],
        answer: json["answer"],
      );

  Map<String, dynamic> toJson() => {
        "question": question,
        "a": a,
        "b": b,
        "c": c,
        "answer": answer,
      };
}
