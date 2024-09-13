import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container( //Header
            height: 150,
            color: const Color.fromARGB(255, 155, 136, 91),
            child: const Center(child: Text('Header')),
          ),
          Container( //Body
            height: 550,
            color: Colors.amber[500],
            child: const Center(child: Text('Body')),
          ),
          Container(//Footer
            height: 250,
            color: const Color.fromARGB(255, 187, 183, 172),
            child: const Center(child: Text('Footer')),
          ),
        ],
      ),
    );
  }
}