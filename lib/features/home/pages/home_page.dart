import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hp_drinking/core/themes/app_images.dart';
import 'package:hp_drinking/features/home/widgets/card_model_widget.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AssetsAudioPlayer _assetsAudioPlayer;
  bool tocando = true;
  @override
  void initState() {
    super.initState();
    _assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
    _assetsAudioPlayer.open(
      Audio("assets/audios/hpsong.mp3"),
    );
    _assetsAudioPlayer.play();
  }

  @override
  void dispose() {
    _assetsAudioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var cardsList = <Widget>[
      CardModelWidget(
        onTap: () {
          Modular.to.pushNamed('/home/question');
        },
        child: Image.asset(AppImages.oculos),
      ),
      CardModelWidget(
        onTap: () {
          Modular.to.pushNamed('/home/question');
        },
        child: Image.asset(AppImages.comensais),
      ),
      CardModelWidget(
        onTap: () {
          Modular.to.pushNamed('/home/question');
        },
        child: Image.asset(AppImages.estacao),
      ),
      CardModelWidget(
        onTap: () {
          Modular.to.pushNamed('/home/question');
        },
        child: Image.asset(AppImages.reliquias),
      ),
    ];

    return MaterialApp(
      title: 'Fetch Elixir test',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 26, 71, 42),
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              if (tocando) {
                _assetsAudioPlayer.stop();
              }
              if (!tocando) {
                _assetsAudioPlayer.play();
              }
              tocando = !tocando;
              setState(() {});
            },
            child: tocando
                ? const Icon(Icons.stop_sharp)
                : const Icon(Icons.play_arrow),
          ),
          title: const Text(
            'HP Drinking',
            style: TextStyle(
              fontSize: 40,
              fontFamily: "HarryP",
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 42, 98, 61),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Hey, muggle!!',
              style: TextStyle(
                  fontSize: 70, color: Colors.white, fontFamily: 'HarryP'),
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
                fontSize: 70,
                fontFamily: 'HarryP',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
