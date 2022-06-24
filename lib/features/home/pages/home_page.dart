import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hp_drinking/core/shared/themes/app_images.dart';
import 'package:hp_drinking/features/home/pages/widgets/card_model_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // var theme = Modular.get<ThemeCubit>();
    var cardsList = <Widget>[
      CardModelWidget(
        onTap: () {
          Modular.to.pushNamed('/home/question');
        },
        child: Image.asset(AppImages.magic),
      ),
      CardModelWidget(
        onTap: () {
          Modular.to.pushNamed('/home/question');
        },
        child: Image.asset(AppImages.logo),
      ),
      CardModelWidget(
        onTap: () {
          Modular.to.pushNamed('/home/question');
        },
        child: Image.asset(AppImages.magic),
      ),
    ];

    return MaterialApp(
      title: 'Fetch Elixir test',
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: const Text('HP Drinking'),
          backgroundColor: Colors.yellowAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Hey, muggle!!',
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
            Center(
              child: CarouselSlider(
                items: cardsList,
                options: CarouselOptions(
                  height: 400,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  enlargeCenterPage: true,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 2000),
                  autoPlayCurve: Curves.fastOutSlowIn,
                ),
              ),
            ),
            const Text(
              'Choose your magical card!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
