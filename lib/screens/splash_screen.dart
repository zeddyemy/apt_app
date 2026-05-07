import 'dart:async';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

/*
  StatefulWidget is used here because we want to run code
  after the screen has loaded.
*/
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D073D),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              transform: Matrix4.rotationZ(0.8),
              child: const Icon(
                Icons.diamond,
                color: Color(0xFF1D073D),
                size: 38,
              ),
            ),

            const SizedBox(height: 35),

            const Text(
              'Prime Heritage',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Community',
              style: TextStyle(
                color: Color(0xFFC7B6E8),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 45),

            const CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 3,
            ),
          ],
        ),
      ),
    );
  }
}
