import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter_tts/flutter_tts.dart';
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
  await flutterTts.setSpeechRate(1.0);
  await flutterTts.setVolume(1.0);
}

void speakText(String text) async {
  await flutterTts.speak(textToSpeak);
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
        body: Column(
          children: <Widget>[
            ElevatedButton(onPressed:(){
              speakText(textToSpeak);

            } ,
             child: const Text("txt beispiel"))
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
                      fillColor: const Color.fromARGB(255, 115, 225, 121),
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Center(child: Text(teil1tetxtbeispiel)),
              ),
            ),
            const SizedBox(
              height: 20,
            )
            ,
            const Teil1DropDown(items: ["item1","item2"],hintText: "Beispiel 0",),
            //////////////////////////////////////////////////////////////////////
          Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black, fontSize: 16),
              children: [
                const TextSpan(
                  text: 'Lorem Ipsum is simply dummy text of the printing and ',
                ),
                // Use a WidgetSpan to embed the dropdown in the text
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Teil1DropDown(
                    items: ['typesetting', 'designing', 'developing'],
                    hintText: 'Select',
                    onChanged: (value) {
                      print('Selected: $value');
                    },
                  ),
                ),
                const TextSpan(
                  text:
                      ' industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                ),
                const TextSpan(
                  text: ' Here is another gap: ',
                ),
                // Another Dropdown
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Teil1DropDown(
                    items: ['book', 'tree', 'car', 'plane'],
                    hintText: 'Select',
                    onChanged: (value) {
                      print('Selected: $value');
                    },
                  ),
                ),
                const TextSpan(
                  text:
                      ' has been in use for over 500 years and is still used today.',
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
