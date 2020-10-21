import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone App',
      home: _homeWidget(),
    );
  }
}

class _homeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Xylophone The Sound Maker!!'),
        ),
      ),
      body: _bodyWidget(),
    );
  }
}

class _bodyWidget extends StatefulWidget {
  @override
  __bodyWidgetState createState() => __bodyWidgetState();
}

class __bodyWidgetState extends State<_bodyWidget> {
  void soundPlayer(int number) {
    final player = new AudioCache();
    player.play('note$number.wav');
  }

  Expanded createButton(Color color, int number, String sur) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          soundPlayer(number);
        },
        child: Text(
          sur,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            createButton(Colors.blue, 1, 'Saa'),
            createButton(Colors.green, 2, 'Ree'),
            createButton(Colors.orange, 3, 'Gaa'),
            createButton(Colors.yellow, 4, 'Maa'),
            createButton(Colors.redAccent, 5, 'Paa'),
            createButton(Colors.blueGrey, 6, 'Dha'),
            createButton(Colors.black, 7, 'Nee'),
          ],
        ),
      ),
    );
  }
}
