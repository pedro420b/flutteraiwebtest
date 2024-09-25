import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutteraiwebtest/Models/lesenteil1texts/lesenteil1text.dart';
import 'package:flutteraiwebtest/Models/teiltext.dart';
import 'package:flutteraiwebtest/widgets/lesenwidget/teil1dropdownwidget.dart';

class Beispiel extends StatefulWidget {
  const Beispiel({super.key});

  @override
  State<Beispiel> createState() => _BeispielState();
}

enum TtsState { playing, stopped, paused, continued }

class _BeispielState extends State<Beispiel> {
  String textToSpeak = "Hallo, testing the test?";
  FlutterTts flutterTts=FlutterTts();
  Future<void> configureTts() async {
  await flutterTts.setLanguage('de-DE');
  await flutterTts.setSpeechRate(1.2);
  await flutterTts.setVolume(1.0);
}

void speakText(String text) async {
  configureTts();
  await flutterTts.speak(text);
  print(await flutterTts.getVoices);
}

void stopSpeaking() async {
  await flutterTts.stop();
}  
  

  
  
  
                                                                   
  final CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sim Beispiel"),
        ),
        body: ListView(
          children: <Widget>[
            ElevatedButton(onPressed:(){
              speakText(teil1tetxtbeispiel);

            } ,
             child: const Text("Ausprechen"),
              
             
             )
            ,
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Text(
                    "Teil 1",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  const Text(
                    "Vorgeschlagene Arbeitszeit: 10 Minuten",
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CircularCountDownTimer(
                      width: 70,
                      height: 70,
                      autoStart: false,
                      isTimerTextShown: true,
                      isReverse: true,
                      controller: _controller,
                      duration: 600,
                      fillColor: const Color.fromARGB(255, 3, 4, 3),
                      ringColor: const Color.fromARGB(255, 233, 66, 63)),
                      const SizedBox(
                        width: 20,
                      ),
                  FloatingActionButton.extended(
                    onPressed: _controller.start,
                    label: const Text("Anfangen"),
                    icon: const Icon(Icons.timer),
                  ),
                  
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //////////////////////////////////////////////////////////////////////
          Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black, fontSize: 16),
              children: [
                TextSpan(
                  text: Teil1Gabbeispiel0,
                ),
                // Use a WidgetSpan to embed the dropdown in the text
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Teil1DropDown(
                    items: itemsgabbeispiel0,
                    hintText: 'Beispiel 0',
                    onChanged: (value) {
                      print('Selected: $value');
                    },
                  ),
                ),
                TextSpan(
                  text: Teil1Gab1,
                ),
                // Use a WidgetSpan to embed the dropdown in the text
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Teil1DropDown(
                    items: itemsgab1,
                    hintText: '1',
                    onChanged: (value) {
                      print('Selected: $value');
                    },
                  ),
                ),
                TextSpan(
                  text: Teil1Gab2,
                ),
                // Use a WidgetSpan to embed the dropdown in the text
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Teil1DropDown(
                    items: itemsgab2,
                    hintText: '2',
                    onChanged: (value) {
                      print('Selected: $value');
                    },
                  ),
                )
                ,
                TextSpan(
                  text: Teil1Gab3,
                ),
                // Another Dropdown
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Teil1DropDown(
                    items:itemsgab3,
                    hintText: '3',
                    onChanged: (value) {
                      print('Selected: $value');
                    },
                  ),
                ),TextSpan(
                  text: Teil1Gab4,
                ),
                // Use a WidgetSpan to embed the dropdown in the text
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Teil1DropDown(
                    items: itemsgab4,
                    hintText: '4',
                    onChanged: (value) {
                      print('Selected: $value');
                    },
                  ),
                ),
                TextSpan(
                  text: Teil1Gab5,
                ),
                // Use a WidgetSpan to embed the dropdown in the text
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Teil1DropDown(
                    items: itemsgab5,
                    hintText: '5',
                    onChanged: (value) {
                      print('Selected: $value');
                    },
                  ),
                )
                ,
                TextSpan(
                  text: Teil1Gab6,
                ),
                // Another Dropdown
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Teil1DropDown(
                    items:itemsgab6,
                    hintText: '6',
                    onChanged: (value) {
                      print('Selected: $value');
                    },
                  ),
                ),TextSpan(
                  text: Teil1Gab7,
                ),
                // Use a WidgetSpan to embed the dropdown in the text
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Teil1DropDown(
                    items: itemsgab7,
                    hintText: '7',
                    onChanged: (value) {
                      print('Selected: $value');
                    },
                  ),
                ),
                TextSpan(
                  text: Teil1Gab8,
                ),
                // Use a WidgetSpan to embed the dropdown in the text
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Teil1DropDown(
                    items: itemsgab8,
                    hintText: '8',
                    onChanged: (value) {
                      print('Selected: $value');
                    },
                  ),
                )
                ,
                 TextSpan(
                  text:Teil1Gab9,
                ),
              ],
            ),
          ),
        ),
      ),
          
          ]
        ),
      ),
    );
  }
                                                                                                                                                                         }
