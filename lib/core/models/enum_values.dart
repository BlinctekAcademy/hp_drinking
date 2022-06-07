class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

enum Difficulty {
  unknown,
  advanced,
  moderate,
  beginner,
  ordinaryWizardingLevel,
  oneOfAKind
}

final difficultyValues = EnumValues({
  "Advanced": Difficulty.advanced,
  "Beginner": Difficulty.beginner,
  "Moderate": Difficulty.moderate,
  "OneOfAKind": Difficulty.oneOfAKind,
  "OrdinaryWizardingLevel": Difficulty.ordinaryWizardingLevel,
  "Unknown": Difficulty.unknown
});
