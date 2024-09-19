import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();

   
  }
    _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, '/login'); // Navigating to home
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/splash.gif",
              height: 100,
              width: 100,
              
            )
            ,const SizedBox(height: 16.0),
            const Text('Welkommen ... '),
          ],
        ),
      ),
    );
  }
}
