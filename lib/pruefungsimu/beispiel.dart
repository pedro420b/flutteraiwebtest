import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutteraiwebtest/Models/teiltext.dart';
import 'package:flutteraiwebtest/pruefungsimu/quizpage.dart';
class Beispiel extends StatefulWidget {
  const Beispiel({super.key});

  @override
  State<Beispiel> createState() => _BeispielState();
}


enum TtsState { playing, stopped, paused, continued }

class _BeispielState extends State<Beispiel> {

  FlutterTts tts1 = FlutterTts();

  final CountDownController _controller=CountDownController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: const Text("Sim Beispiel"),
      ),
      body: Column(
        children:[Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              
              children: [
                const Text(
                  "Teil 1",style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                )
                ,
                  const Text(
                  "Vorgeschlagene Arbeitszeit: 10 Minuten",style: TextStyle(fontWeight: FontWeight.normal),
                ),

                const SizedBox(
                  width: 20,
                ),
                CircularCountDownTimer(
                  width: 70,
                   height: 70,
                   autoStart: false,
                   controller: _controller,
                    duration: 600,
                    isTimerTextShown: true,
                    isReverse: true,
                     fillColor: const Color.fromARGB(255, 115, 225, 121),
                      ringColor: const Color.fromARGB(255, 233, 66, 63))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          )
          ,
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: ListView(
                  children: [
                    Text(teil1tetxtbeispiel),
                     const QuizPage(),
                    
                    ]),
              
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton.extended(
              onPressed: _controller.start,
              label:const Text("Anfangen"),
              icon: const Icon(Icons.start_rounded),


            backgroundColor: const Color.fromARGB(233, 115, 106, 115),
            
            ),
            

        ],
      ),
     ),
      
    );
  }
}