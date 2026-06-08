import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Widget buildKey(int buttonNr, MaterialColor color, int note) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: color, shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
        onPressed: () {
          playSound(note);
        },
        child: Text("1"),
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
            children: [
              buildKey(1, Colors.red, 1),
              buildKey(2, Colors.orange, 2),
              buildKey(3, Colors.yellow, 3),
              buildKey(4, Colors.green, 4),
              buildKey(5, Colors.teal, 5),
              buildKey(6, Colors.blue, 6),
              buildKey(7, Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
