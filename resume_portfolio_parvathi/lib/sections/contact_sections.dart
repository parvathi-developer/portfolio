import 'package:flutter/material.dart';
import '../widgets/section_title.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionTitle("Contact"),
        Text("📧 parvathi.appdeveloper@gmail.com"),
        SizedBox(height: 8),
        Text("🔗 LinkedIn: linkedin.com/in/parvathi-m-30a859227"),
        SizedBox(height: 40),
      ],
    );
  }
}
