import 'package:flutter/material.dart';
import 'dart:html' as html;

class TopNavBar extends StatelessWidget {
  final Map<String, GlobalKey> sections;
  const TopNavBar({super.key, required this.sections});

  void _scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        border: const Border(bottom: BorderSide(color: Color(0xFFE5E7EB))),
      ),
      child: Row(
        children: [
          const Text(
            "Parvathi M",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xFF111827),
            ),
          ),
          const Spacer(),
          ...sections.entries.map(
            (e) => TextButton(
              onPressed: () => _scrollTo(e.value),
              child: Text(
                e.key,
                style: const TextStyle(color: Color(0xFF374151)),
              ),
            ),
          ),
          const SizedBox(width: 16),
          ElevatedButton(
            onPressed: () {
              html.window.open('assets/resume/Parvathi_M_Resume.pdf', '_blank');
            },
            child: const Text("Download Resume"),
          ),
        ],
      ),
    );
  }
}
