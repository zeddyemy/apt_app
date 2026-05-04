import 'package:flutter/material.dart';
import '../widgets/app_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: const Column(
          children: [
            AppHeader(),

            Expanded(child: SingleChildScrollView()),
          ],
        ),
      ),
    );
  }
}
