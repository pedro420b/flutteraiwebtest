import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutteraiwebtest/Models/lesenteil1texts/lesenteil1text.dart';
import 'package:flutteraiwebtest/Models/lesenteil2texts/lesenteil2text.dart';
import 'package:flutteraiwebtest/Models/lesenteil4texts/lesenteil4text.dart';
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
  FlutterTts flutterTts = FlutterTts();
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

  final CountDownController _controllerteil1 = CountDownController();
  final CountDownController _controllerteil2 = CountDownController();
  final CountDownController _controllerteil3 = CountDownController();
  final CountDownController _controllerteil4 = CountDownController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sim Beispiel"),
        ),
        body: ListView(children: <Widget>[
          ElevatedButton(
            onPressed: () {
              speakText(teil1tetxtbeispiel);
            },
            child: const Text("Ausprechen"),
          ),
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
                    controller: _controllerteil1,
                    duration: 600,
                    fillColor: const Color.fromARGB(255, 3, 4, 3),
                    ringColor: const Color.fromARGB(255, 233, 66, 63)),
                const SizedBox(
                  width: 20,
                ),
                FloatingActionButton.extended(
                  onPressed: _controllerteil1.start,
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
                    ),
                    TextSpan(
                      text: Teil1Gab3,
                    ),
                    // Another Dropdown
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Teil1DropDown(
                        items: itemsgab3,
                        hintText: '3',
                        onChanged: (value) {
                          print('Selected: $value');
                        },
                      ),
                    ),
                    TextSpan(
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
                    ),
                    TextSpan(
                      text: Teil1Gab6,
                    ),
                    // Another Dropdown
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Teil1DropDown(
                        items: itemsgab6,
                        hintText: '6',
                        onChanged: (value) {
                          print('Selected: $value');
                        },
                      ),
                    ),
                    TextSpan(
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
                    ),
                    TextSpan(
                      text: Teil1Gab9,
                    ),
                  ],
                ),
              ),
            ),
          ),

          ///////////////////////////////////////////////////////////Teil2anfang////////
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Teil 2",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Text(
                              "Vorgeschlagene Arbeitszeit: 20 Minuten",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Sie lesen im Internet einen Artikel über eine Studie zur Handynutzung in Familien. Wählen Sie bei jeder Aufgabe die richtige Lösung.",
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                      ],
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
                        controller: _controllerteil2,
                        duration: 1200,
                        fillColor: const Color.fromARGB(255, 3, 4, 3),
                        ringColor: const Color.fromARGB(255, 233, 66, 63)),
                    const SizedBox(
                      width: 20,
                    ),
                    FloatingActionButton.extended(
                      onPressed: _controllerteil2.start,
                      label: const Text("Anfangen"),
                      icon: const Icon(Icons.timer),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Column(
                    children: [
                      const Text(lesenteil2rawtext),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        color: const Color.fromARGB(255, 116, 131, 139),
                        height: 700,
                        child: const Teil2QuestionsLayout(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ////////////////////////////////////////////////////////////
          //////////////////////Teil3Anfang//////////////////////////////////////
          ///
      Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const Text(
                  "Teil 3",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 100,
                ),
                const Text(
                  "Vorgeschlagene Arbeitszeit: 20 Minuten",
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
                    controller: _controllerteil3,
                    duration: 1200,
                    fillColor: const Color.fromARGB(255, 3, 4, 3),
                    ringColor: const Color.fromARGB(255, 233, 66, 63)),
                const SizedBox(
                  width: 20,
                ),
                FloatingActionButton.extended(
                  onPressed: _controllerteil3.start,
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
                    ),
                    TextSpan(
                      text: Teil1Gab3,
                    ),
                    // Another Dropdown
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Teil1DropDown(
                        items: itemsgab3,
                        hintText: '3',
                        onChanged: (value) {
                          print('Selected: $value');
                        },
                      ),
                    ),
                    TextSpan(
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
                    ),
                    TextSpan(
                      text: Teil1Gab6,
                    ),
                    // Another Dropdown
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Teil1DropDown(
                        items: itemsgab6,
                        hintText: '6',
                        onChanged: (value) {
                          print('Selected: $value');
                        },
                      ),
                    ),
                    TextSpan(
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
                    ),
                    TextSpan(
                      text: Teil1Gab9,
                    ),
                  ],
                ),
              ),
            ),
          ),


      //////////////////////////////////////////////////////////////////////////////////
          ///////////////////////////////////////////////////////////Teil4anfang////////
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Teil 4",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Text(
                              "Vorgeschlagene Arbeitszeit für nicht behinderte Prüfungsteilnehmende: 15 Minuten",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Sie lesen in einer Fachzeitschrift Beiträge von Wissenschaftlerinnen und Wissenschaftlern. Wählen Sie bei jeder Aussage: Wer äußert das? Zwei Aussagen passen nicht. Markieren Sie in diesem Fall mit x.",
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                      ],
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
                        controller: _controllerteil4,
                        duration: 900,
                        fillColor: const Color.fromARGB(255, 3, 4, 3),
                        ringColor: const Color.fromARGB(255, 233, 66, 63)),
                    const SizedBox(
                      width: 20,
                    ),
                    FloatingActionButton.extended(
                      onPressed: _controllerteil4.start,
                      label: const Text("Anfangen"),
                      icon: const Icon(Icons.timer),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Column(
                    children: [
                      const Text(lesenteil2rawtext),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black, width: 1), // Schwarzer Rand
                          borderRadius:
                              BorderRadius.circular(17), // Abgerundete Ecken
                        ),
                        height: 900,
                        child: const Teil4QuestionsLayout(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
