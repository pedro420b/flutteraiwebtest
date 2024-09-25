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
                height: MediaQuery.sizeOf(context).height/0.75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0.75), // Schwarzer Rand
                  borderRadius: BorderRadius.circular(10), // Abgerundete Ecken
                ),
                
              ),
              // Zweiter Container für den Text
              Positioned.fill(
                child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const [
              FrageItem(
                title: 'B3',
                question:
                    'Das Internet bietet viele Vorteile, die gern genutzt werden.',
                options: ['a', 'b', 'c', 'x'],
              ),
              FrageItem(
                title: 'A24',
                question:
                    'Angriffe auf sensible Daten verursachen zunehmend finanzielle Verluste.',
                options: ['a', 'b', 'c', 'x'],
              ),
              FrageItem(
                title: 'A25',
                question:
                    'Reflektiertes Nutzerverhalten kann dazu beitragen, die Verbreitung von Daten einzuschränken.',
                options: ['a', 'b', 'c', 'x'],
              ),
              FrageItem(
                title: 'A26',
                question:
                    'Unternehmen, die nicht ausreichend für Datenschutz sorgen, werden Kundinnen und Kunden verlieren.',
                options: ['a', 'b', 'c', 'x'],
              ),
              FrageItem(
                title: 'A27',
                question:
                    'Dank immenser Datenmengen können Unternehmen individuelle Kundenangebote erstellen.',
                options: ['a', 'b', 'c', 'x'],
              ),
              FrageItem(
                title: 'A28',
                question:
                    'Inhaber von Internetseiten wollen effizient zum Schutz der Bürgerinnen und Bürger beitragen.',
                options: ['a', 'b', 'c', 'x'],
              ),
              FrageItem(
                title: 'A29',
                question:
                    'Trotz gegenteiliger Äußerungen gehen Nutzerinnen und Nutzer sorglos mit persönlichen Angaben um.',
                options: ['a', 'b', 'c', 'x'],
              ),
              FrageItem(
                title: 'A30',
                question:
                    'Kostenlose Dienstleistungen zielen auf die Gewinnung persönlicher Daten.',
                options: ['a', 'b', 'c', 'x'],
              ),
            ],
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

class FrageItem extends StatefulWidget {
  final String title;
  final String question;
  final List<String> options;

  const FrageItem({super.key, 
    required this.title,
    required this.question,
    required this.options,
  });

  @override
  // ignore: library_private_types_in_public_api
  _FrageItemState createState() => _FrageItemState();
}

class _FrageItemState extends State<FrageItem> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey[300],
            child: Text(
              widget.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.question,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Column(
            children: widget.options
                .map((option) => RadioListTile<String>(
                      title: Text(option),
                      value: option,
                      groupValue: _selectedOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedOption = value;
                        });
                      },
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}