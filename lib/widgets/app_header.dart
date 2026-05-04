import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 28),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFE6E1EA))),
      ),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: const Color(0xFF1D073D),
              borderRadius: BorderRadius.circular(5),
            ),
            transform: Matrix4.rotationZ(0.8),
          ),

          const SizedBox(width: 14),

          const Expanded(
            child: Text(
              'Prime Heritage Community',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ),

          const Icon(
            Icons.notifications_none,
            size: 30,
            color: Color(0xFF6B6875),
          ),

          const SizedBox(width: 20),

          const Icon(Icons.menu, size: 34, color: Colors.black),
        ],
      ),
    );
  }
}
