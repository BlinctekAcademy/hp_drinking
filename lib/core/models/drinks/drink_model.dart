class Drink {
  List<Drinks>? drinks;

  Drink({this.drinks});

  Drink.fromJson(Map<String, dynamic> json) {
    if (json['drinks'] != null) {
      drinks = <Drinks>[];
      json['drinks'].forEach((v) {
        drinks!.add(Drinks.fromJson(v));
      });
    }
  }
}

class Drinks {
  String? idDrink;
  String? strDrink;

  String? strTags;

  String? strCategory;
  String? strIBA;
  String? strAlcoholic;
  String? strGlass;
  String? strInstructions;

  String? strInstructionsDE;

  String? strInstructionsIT;

  String? strDrinkThumb;
  String? strIngredient1;
  String? strIngredient2;
  String? strIngredient3;
  String? strIngredient4;
  String? strIngredient5;
  String? strIngredient6;
  String? strIngredient7;

  String? strMeasure1;
  String? strMeasure2;
  String? strMeasure3;
  String? strMeasure4;
  String? strMeasure5;
  String? strMeasure6;
  String? strMeasure7;

  String? strImageSource;
  String? strImageAttribution;
  String? strCreativeCommonsConfirmed;
  String? dateModified;

  Drinks(
      {String? idDrink,
      String? strDrink,
      String? strTags,
      String? strCategory,
      String? strIBA,
      String? strAlcoholic,
      String? strGlass,
      String? strInstructions,
      String? strInstructionsDE,
      String? strInstructionsIT,
      String? strDrinkThumb,
      String? strIngredient1,
      String? strIngredient2,
      String? strIngredient3,
      String? strIngredient4,
      String? strIngredient5,
      String? strIngredient6,
      String? strIngredient7,
      String? strMeasure1,
      String? strMeasure2,
      String? strMeasure3,
      String? strMeasure4,
      String? strMeasure5,
      String? strMeasure6,
      String? strMeasure7,
      String? strImageSource,
      String? strImageAttribution,
      String? strCreativeCommonsConfirmed,
      String? dateModified});

  Drinks.fromJson(Map<String, dynamic> json) {
    idDrink = json['idDrink'];
    strDrink = json['strDrink'];

    strTags = json['strTags'];

    strCategory = json['strCategory'];
    strIBA = json['strIBA'];
    strAlcoholic = json['strAlcoholic'];
    strGlass = json['strGlass'];
    strInstructions = json['strInstructions'];

    strInstructionsDE = json['strInstructionsDE'];

    strInstructionsIT = json['strInstructionsIT'];

    strDrinkThumb = json['strDrinkThumb'];
    strIngredient1 = json['strIngredient1'];
    strIngredient2 = json['strIngredient2'];
    strIngredient3 = json['strIngredient3'];
    strIngredient4 = json['strIngredient4'];
    strIngredient5 = json['strIngredient5'];
    strIngredient6 = json['strIngredient6'];
    strIngredient7 = json['strIngredient7'];

    strMeasure1 = json['strMeasure1'];
    strMeasure2 = json['strMeasure2'];
    strMeasure3 = json['strMeasure3'];
    strMeasure4 = json['strMeasure4'];
    strMeasure5 = json['strMeasure5'];
    strMeasure6 = json['strMeasure6'];
    strMeasure7 = json['strMeasure7'];

    strImageSource = json['strImageSource'];
    strImageAttribution = json['strImageAttribution'];
    strCreativeCommonsConfirmed = json['strCreativeCommonsConfirmed'];
    dateModified = json['dateModified'];
  }
}
