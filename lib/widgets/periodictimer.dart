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
    const oneSecond = Duration(seconds: 1);
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
    return Row(
      children: [Center(
        child: Text(
          '$_tickCount',
          style: const TextStyle(fontSize: 12),
        ),
      ),
      TextButton(
        onPressed: _startPeriodicTimer,
        child: const Icon(Icons.timer),
      ),]
    );
  }
}