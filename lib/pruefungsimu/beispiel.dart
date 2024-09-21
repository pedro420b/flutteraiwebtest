import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
class Beispiel extends StatefulWidget {
  const Beispiel({super.key});

  @override
  State<Beispiel> createState() => _BeispielState();
}


enum TtsState { playing, stopped, paused, continued }

class _BeispielState extends State<Beispiel> {

  FlutterTts tts1 = FlutterTts();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: const Text("Sim Beispiel"),
      ),
      body: Column(
        children: <Widget> [
          Row(
            children: [
              Container(
                height: 100,
                width: 90,
                decoration: const BoxDecoration(
                  color: Colors.deepOrange,
                ),
              ),
                Container(
                height: 100,
                width: 110,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 41, 24, 19),
                ),
              ),
            ],
          ),
            Container(
            height: 100,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 178, 178, 178),
            ),
          )

        ],
      ),
     ),
      
    );
  }
}