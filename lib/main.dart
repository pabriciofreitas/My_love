import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'imagem/1.jpg',
  'imagem/2.jpg',
  'imagem/3.jpg',
  'imagem/4.jpeg',
  'imagem/5.jpg',
  'imagem/6.jpeg',
  'imagem/7.jpg',
  'imagem/8.jpg',
  'imagem/9.jpeg',
  'imagem/10.jpeg',
  'imagem/11.jpeg',
  'imagem/12.jpeg',
  'imagem/13.png'
];
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Tela(),
  ));
}

class Tela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final player =
        new AudioCache(fixedPlayer: AudioPlayer(), respectSilence: false);
    player.play('1.mp3', volume: 1.0);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterFloat,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red,
            child: Icon(Icons.play_arrow),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Foto(),
                  ));
              player.fixedPlayer.stop();
            },
          ),
          backgroundColor: const Color(0xFFffcbc6),
          body: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 110,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("imagem/1-2.png"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      height: 110,
                      width: 118,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("imagem/1-3.png"),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Image(
                          image: AssetImage("imagem/gif.gif"),
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Meu Amor",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico',
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: Image(
                          image: AssetImage("imagem/gif.gif"),
                          color: Colors.white),
                    ),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Você está ",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Pacifico',
                          )),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("imagem/coracao.gif"),
                                fit: BoxFit.cover)),
                      ),
                      Text(" Pronta?",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Pacifico',
                          )),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("imagem/2-1.png"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("imagem/2-2.png"),
                              fit: BoxFit.cover)),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}

class Foto extends StatefulWidget {
  @override
  _FotoState createState() => _FotoState();
}

class _FotoState extends State<Foto> {
  @override
  Widget build(BuildContext context) {
    final player =
        new AudioCache(fixedPlayer: AudioPlayer(), respectSilence: false);
    player.play('2.mp3', volume: 1.0);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            final double height = MediaQuery.of(context).size.height;
            return CarouselSlider(
              options: CarouselOptions(
                height: height,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                autoPlay: true,
              ),
              items: imgList
                  .map((
                    item,
                  ) =>
                      Container(
                        child: Center(
                            child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          height: height,
                        )),
                      ))
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}
