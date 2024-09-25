import 'package:flutter/material.dart';
import 'package:flutteraiwebtest/Models/lesenteil1texts/lesenteil1text.dart';
import 'package:flutteraiwebtest/Models/teiltext.dart';

// Model for the speaker's statements and questions
class Speaker {
  final String name;
  final String role;
  final String statement;

  Speaker({required this.name, required this.role, required this.statement});
}

class Question {
  final String questionText;
  final List<String> answers;

  Question({required this.questionText, required this.answers});
}

// List of speakers
List<Speaker> speakers = [
  Speaker(
    name: "Helga Brückner, Professorin",
    role: "Statement 1",
    statement:
        "Es besteht eine ...",
  ),
  Speaker(
    name: "Leopold Nowak, Professor für Öffentliches Recht",
    role: "Statement 2",
    statement:
        "Die Nutzung des Internets bietet viele Vorteile, jedoch ...",
  ),
];

// List of questions
List<Question> questions = [
  Question(
    questionText: "Welche Aussage passt zu Statement 1?",
    answers: ["a: Aussage 1", "b: Aussage 2", "c: Aussage 3", "d: Aussage 4"],
  ),
  Question(
    questionText: "Welche Aussage passt zu Statement 2?",
    answers: ["a: Aussage 1", "b: Aussage 2", "c: Aussage 3", "d: Aussage 4"],
  ),
];

class Teil4QuestionsLayout extends StatefulWidget {
  const Teil4QuestionsLayout({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Teil4QuestionsLayoutState createState() => _Teil4QuestionsLayoutState();
}

class _Teil4QuestionsLayoutState extends State<Teil4QuestionsLayout> {
  // Store selected answers
  List<int?> selectedAnswers = List.filled(questions.length, null);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Stack(
            children: [
              // Erster Container
              Container(
                width: MediaQuery.sizeOf(context).width/2.5,
                height: MediaQuery.sizeOf(context).height/2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0.75), // Schwarzer Rand
                  borderRadius: BorderRadius.circular(10), // Abgerundete Ecken
                ),
                
              ),
              // Zweiter Container für den Text
              Positioned.fill(
                child: Container(
                  alignment: Alignment.center, // Zentriere den Text
                  child:const Text(
                    teil1tetxtbeispiel,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
                        const SizedBox(width: 16)
                        ,
                 Stack(
            children: [
              // Erster Container
              Container(
                width: MediaQuery.sizeOf(context).width/2.5,
                height: MediaQuery.sizeOf(context).height/2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0.75), // Schwarzer Rand
                  borderRadius: BorderRadius.circular(10), // Abgerundete Ecken
                ),
                
              ),
              // Zweiter Container für den Text
              Positioned.fill(
                child: Container(
                  alignment: Alignment.center, // Zentriere den Text
                  child:const Text(
                    teil1tetxtbeispiel,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
            
              
              
          
         
        ],
      ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Stack(
            children: [
              // Erster Container
              Container(
                width: MediaQuery.sizeOf(context).width/2.5,
                height: MediaQuery.sizeOf(context).height/2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0.75), // Schwarzer Rand
                  borderRadius: BorderRadius.circular(10), // Abgerundete Ecken
                ),
                
              ),
              // Zweiter Container für den Text
              Positioned.fill(
                child: Container(
                  alignment: Alignment.center, // Zentriere den Text
                  child:const Text(
                    teil1tetxtbeispiel,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
                        const SizedBox(width: 16)
                        ,
                 Stack(
            children: [
              // Erster Container
              Container(
                width: MediaQuery.sizeOf(context).width/2.5,
                height: MediaQuery.sizeOf(context).height/2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0.75), // Schwarzer Rand
                  borderRadius: BorderRadius.circular(10), // Abgerundete Ecken
                ),
                
              ),
              // Zweiter Container für den Text
              Positioned.fill(
                child: Container(
                  alignment: Alignment.center, // Zentriere den Text
                  child:const Text(
                    teil1tetxtbeispiel,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
            
              
              
          
         
        ],
      ),
   ] ));
  }
}