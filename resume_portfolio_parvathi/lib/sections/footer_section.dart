import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: const [
          Divider(),
          SizedBox(height: 16),
          Text("📧 parvathi.appdeveloper@gmail.com"),
          SizedBox(height: 6),
          Text("🔗 linkedin.com/in/parvathi-m-30a859227"),
          SizedBox(height: 12),
          Text("© 2025 Parvathi M", style: TextStyle(color: Color(0xFF9CA3AF))),
        ],
      ),
    );
  }
}
