import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Quick Actions",
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
        SizedBox(height: 16),

        Row(
          children: [
            Expanded(
              child: QuickActionItem(
                icon: Icons.add,
                title: 'Subscribe',
                iconColor: Color(0xFF3B245E),
                bgColor: Color(0xFFF1ECFA),
              ),
            ),
            SizedBox(width: 14),

            Expanded(
              child: QuickActionItem(
                icon: Icons.arrow_downward,
                title: 'Deposit',
                iconColor: Color(0xFF008A61),
                bgColor: Color(0xFFE4F8EF),
              ),
            ),

            SizedBox(width: 14),

            Expanded(
              child: QuickActionItem(
                icon: Icons.receipt_long_outlined,
                title: 'Transactions',
                iconColor: Color(0xFFFF7A1A),
                bgColor: Color(0xFFFFF0E3),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class QuickActionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color iconColor;
  final Color bgColor;
  final String? badgeText;

  const QuickActionItem({
    super.key,
    required this.icon,
    required this.title,
    required this.iconColor,
    required this.bgColor,
    this.badgeText,
  });

  @override
  Widget build(BuildContext context) {
    final bool hasBadge = badgeText != null;

    return Container(
      height: 128,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFE4E1E8)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: iconColor, size: 22),
              ),
              if (hasBadge)
                Positioned(
                  right: -6,
                  top: -6,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      badgeText!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 10),

          Text(
            title,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 13, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
