import 'package:flutter/material.dart';
// import 'screens/home_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const PrimeHeritageApp());
}

class PrimeHeritageApp extends StatelessWidget {
  const PrimeHeritageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prime Heritage Community',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Arial',
        scaffoldBackgroundColor: const Color(0xFFF7F5F8),
      ),
      home: const SplashScreen(),
    );
  }
}
