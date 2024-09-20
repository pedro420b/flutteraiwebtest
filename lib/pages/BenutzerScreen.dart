import 'package:flutter/material.dart';


class Benutzerscreen extends StatelessWidget {

  const Benutzerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text( " welk Userx "),),
      body: const Column(
        children: [

          Row(
            children: [
              Text("name:"),
              Text('data')
            ],
          ),
          
          Row(
            children: [
              Text("mail:"),
              Text("exampll:"),
            ],
          ),
        ],

      ),


      
    );
  }}