import 'package:flutter/material.dart';
import '../widgets/section_title.dart';
import '../widgets/content_container.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle("Education"),
        ContentContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Bachelor of Engineering – Computer Science",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF111827),
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Anna University • 2014",
                style: TextStyle(color: Color(0xFF6B7280)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
