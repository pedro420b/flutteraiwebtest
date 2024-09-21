import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutteraiwebtest/pages/login_page.dart';
import 'package:flutteraiwebtest/pages/profilepage.dart';
import 'package:flutteraiwebtest/pages/signup_page.dart';
import 'package:flutteraiwebtest/pages/splash_page.dart';
import 'package:flutteraiwebtest/pruefungsimu/beispiel.dart';

import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCt8J3IbNvPkQOemJFttcDG1jZShVCmTtI",
      authDomain: "[pruesimul.firebaseapp.com](http://pruesimul.firebaseapp.com/)",
      projectId: "pruesimul",
      storageBucket: "[pruesimul.appspot.com](http://pruesimul.appspot.com/)",
      messagingSenderId: "737332937319",
      appId: "1:737332937319:web:38b26f69881e3b071a0ac2",
    ),
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

      },
    );
  }
}

