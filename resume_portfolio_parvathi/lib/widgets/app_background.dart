import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  final Widget child;
  const AppBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFF9FAFB), // very light top
            Color(0xFFF3F4F6), // subtle middle
            Color(0xFFFFFFFF), // clean bottom
          ],
        ),
      ),
      child: child,
    );
  }
}
