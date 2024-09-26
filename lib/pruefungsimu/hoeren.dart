import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ListeningTaskScreen extends StatefulWidget {
  const ListeningTaskScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ListeningTaskScreenState createState() => _ListeningTaskScreenState();
}

class _ListeningTaskScreenState extends State<ListeningTaskScreen> {
  late AudioPlayer _audioPlayer;
  bool isPlaying = false;
  int _remainingTime = 60; // Zeit für die Beantwortung
  late Timer _timer;

  String? selectedOptionA1;
  String? selectedOptionA2;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  void _playAudio() async {
    if (!isPlaying) {
      await _audioPlayer.play(AssetSource('audios/annaaudio.mp3'),);
      setState(() {
        isPlaying = true;
      });
      _startTimer(); // Starte den Timer, wenn das Audio abgespielt wird
    } else {
      await _audioPlayer.pause();
      setState(() {
        isPlaying = false;
      });
      _timer.cancel(); // Pausiere den Timer, wenn das Audio pausiert
    }
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingTime > 0) {
          _remainingTime--;
        } else {
          _timer.cancel(); // Stoppe den Timer, wenn die Zeit abgelaufen ist
        }
      });
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hören: Teil 1')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Audio Player Controls
          Row(
            children: [
              IconButton(
                icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                onPressed: _playAudio,
              ),
              Text(isPlaying ? 'Pause' : 'Play Audio'),
            ],
          ),
          
          const SizedBox(height: 20),

          // Timer
          Text(
            'Verbleibende Zeit: $_remainingTime Sekunden',
            style: const TextStyle(fontSize: 18, color: Colors.red),
          ),

          const SizedBox(height: 20),

          // Multiple Choice Questions
          const Text(
            'Aufgaben',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          _buildQuestion(
            'A1: Das Buch ist ein fiktionales Werk.', 
            ['Buch 1 - Platonium', 'Buch 2 - Isolationen', 'Buch 3 - Die Natur und das Meer'],
            selectedOptionA1, (String? value) {
              setState(() {
                selectedOptionA1 = value;
              });
            }
          ),
          _buildQuestion(
            'A2: Es werden Analysen über Flora und Fauna angefertigt.',
            ['Buch 1', 'Buch 2', 'Buch 3'],
            selectedOptionA2, (String? value) {
              setState(() {
                selectedOptionA2 = value;
              });
            }
          ),

          // Weitere Fragen können hier hinzugefügt werden
        ],
      ),
    );
  }

  Widget _buildQuestion(String question, List<String> options, String? selectedOption, ValueChanged<String?>? onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question, style: const TextStyle(fontSize: 16)),
        Column(
          children: options.map((option) {
            return ListTile(
              title: Text(option),
              leading: Radio<String?>(
                value: option,
                groupValue: selectedOption,
                onChanged: onChanged,
              ),
            );
          }).toList(),
        ),
        const Divider(),
      ],
    );
  }
}
