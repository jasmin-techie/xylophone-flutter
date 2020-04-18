import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playAudio({int soundNumber}) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/note$soundNumber.wav"),
    );
    assetsAudioPlayer.play();
  }

  Widget buildKey({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playAudio(soundNumber: soundNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundNumber: 1, color: Colors.green),
              buildKey(soundNumber: 2, color: Colors.yellow),
              buildKey(soundNumber: 3, color: Colors.red),
              buildKey(soundNumber: 4, color: Colors.teal),
              buildKey(soundNumber: 5, color: Colors.blue),
              buildKey(soundNumber: 6, color: Colors.orange),
              buildKey(soundNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
