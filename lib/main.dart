import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  playSound(1);
                },
                child: Text("1"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  playSound(2);
                },
                child: Text("2"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow,
                ),
                onPressed: () {
                  playSound(3);
                },
                child: Text("3"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  playSound(4);
                },
                child: Text("4"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                ),
                onPressed: () {
                  playSound(5);
                },
                child: Text("5"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  playSound(6);
                },
                child: Text("6"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purple,
                ),
                onPressed: () {
                  playSound(7);
                },
                child: Text("7"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
