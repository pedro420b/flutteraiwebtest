// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';

class PeriodicTimerWidget extends StatefulWidget {
  const PeriodicTimerWidget({super.key});

  @override
  _PeriodicTimerWidgetState createState() => _PeriodicTimerWidgetState();
}

class _PeriodicTimerWidgetState extends State<PeriodicTimerWidget> {
  Timer? _periodicTimer;
  int _tickCount = 0;

  void _startPeriodicTimer() {
    const oneSecond = Duration(seconds: 10);
    _periodicTimer = Timer.periodic(oneSecond, (Timer timer) {
      setState(() {
        _tickCount++;
      });
    });
  }

  @override
  void dispose() {
    _periodicTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Periodic Timer Example')),
      body: Center(
        child: Text(
          'Tick: $_tickCount',
          style: const TextStyle(fontSize: 48),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startPeriodicTimer,
        tooltip: 'Start Periodic Timer',
        child: const Icon(Icons.timer),
      ),
    );
  }
}