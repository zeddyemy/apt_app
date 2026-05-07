import 'package:flutter/material.dart';
import '../widgets/app_header.dart';
import '../widgets/balance_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: const Column(
          children: [
            AppHeader(),

            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(22),
                child: Column(
                  children: [
                    BalanceCard(accountName: 'Olumide', balance: 4500.00),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
