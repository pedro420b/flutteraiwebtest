import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutteraiwebtest/pages/login_page.dart';
import 'package:flutteraiwebtest/pages/profilepage.dart';
import 'package:flutteraiwebtest/pages/signup_page.dart';
import 'package:flutteraiwebtest/pages/splash_page.dart';
import 'package:flutteraiwebtest/pruefungsimu/beispiel.dart';
import 'package:flutteraiwebtest/pruefungsimu/hoeren.dart';

import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'c1-prufungen-simulation',      
      home: const SplashScreen(),
      initialRoute: '/splash', // Set the initial route
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/signup': (context) => const RegistrationScreen(),
        '/benutzerseite': (context) =>  const  ProfilePage(),
        '/beispiel':(context) => const Beispiel(),
        '/hoeren':(context) => const ListeningTaskScreen(),
        

      },
    );
  }
}

