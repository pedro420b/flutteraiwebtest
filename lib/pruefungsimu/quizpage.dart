import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // ignore: prefer_final_fields
   List<Map<String, dynamic>> _questions = [
    {
      "text": "In Deutschland werden jeden Tag neue Start-ups gegründet. Eines von ihnen wollen wir heute vorstellen: StadtTours.",
      "gaps": [
        {
          "index": 2, // Korrigierter Index, der innerhalb der Wortgrenzen liegt
          "options": ["eröffnet", "gegründet", "geschlossen"],
          "answer": "gegründet"
        },
      ]
    },
    // Weitere Fragen hinzufügen
  ];

  final Map<int, String> _selectedAnswers = {};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListView(
        padding: const EdgeInsets.all(16.0),
        children: _questions.map((question) {
          return RichText(
            text: TextSpan(
              style: const TextStyle(fontSize: 18, color: Colors.black),
              children: _buildTextSpans(question),
            ),
          );
        }).toList(),
      ),
    );
  }

  List<InlineSpan> _buildTextSpans(Map<String, dynamic> question) {
    List<InlineSpan> spans = [];
    List<String> parts = question['text'].split(' ');
    int currentIndex = 0;

    for (var gap in question['gaps']) {
      final gapIndex = gap['index'];

      // ignore: prefer_interpolation_to_compose_strings
      spans.add(TextSpan(text: parts.sublist(currentIndex, gapIndex).join(' ') + ' '));

      spans.add(WidgetSpan(
          child: DropdownButton<String>(
            value: _selectedAnswers[gapIndex],
            underline: const SizedBox(), // Entfernt die Unterstreichung
            items: gap['options'].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedAnswers[gapIndex] = newValue!;
              });
            },
          ),
        ),
      );

      currentIndex = gapIndex + 1;
    }

    spans.add(TextSpan(text: parts.sublist(currentIndex).join(' ')));

    return spans;
  }
}