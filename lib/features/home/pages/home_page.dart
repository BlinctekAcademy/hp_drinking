import 'package:flutter/material.dart';
import 'package:hp_drinking/core/models/drinks/drink_model.dart';
import 'package:hp_drinking/core/models/elixirs/elixir_model.dart';
import 'package:hp_drinking/features/home/data/fetch_elixirs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Elixirs> futureElixirs;
  late Future<Drink> futureDrink;
  @override
  void initState() {
    super.initState();
    futureElixirs = fetchElixirs();
    futureDrink = fetchRandomDrinks();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Elixir test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Elixir'),
        ),
        body: Center(
          child: FutureBuilder<Drink>(
            future: futureDrink,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Text('${snapshot.data!.drinks![0].strInstructions}'),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
