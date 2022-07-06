import 'package:flutter/material.dart';
import 'package:hp_drinking/core/data/fetch_data.dart';
import 'package:hp_drinking/core/models/drinks/drink_model.dart';

class DrinkText extends StatefulWidget {
  const DrinkText({Key? key}) : super(key: key);

  @override
  State<DrinkText> createState() => _DrinkTextState();
}

class _DrinkTextState extends State<DrinkText> {
  late Future<Drink> futureDrink;

  @override
  void initState() {
    super.initState();

    futureDrink = fetchRandomDrinks();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Drink>(
      future: futureDrink,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: [
              Text(
                '${snapshot.data!.drinks![0].strInstructions}',
                style: const TextStyle(
                  color: Color.fromARGB(255, 93, 93, 93),
                ),
              ),
            ],
          );
        } else if (snapshot.hasError) {
          return Text(
            '${snapshot.error}',
            style: const TextStyle(
              color: Colors.blue,
            ),
          );
        }

        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }
}
