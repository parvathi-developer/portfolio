import 'package:flutter/material.dart';
import 'package:resume_portfolio_parvathi/widgets/content_container.dart';
import 'package:resume_portfolio_parvathi/widgets/section_title.dart';
import 'package:resume_portfolio_parvathi/widgets/skill_chip.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle("Core Technical Skills"),
        _divider(),

        ContentContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _skillRow(
                title: "Languages",
                skills: ["Dart", "Kotlin", "Java", "SQL", "JSON"],
              ),

              _skillRow(
                title: "Mobile Platforms",
                skills: [
                  "Flutter",
                  "FlutterFlow",
                  "Android (Jetpack Compose)",
                  "Android (XML)",
                  "Xamarin (Legacy)",
                ],
              ),

              _skillRow(
                title: "Architecture",
                skills: [
                  "Clean Architecture",
                  "MVVM",
                  "BLoC",
                  "Provider",
                  "Repository Pattern",
                  "Dependency Injection",
                  "Modular Architecture",
                ],
              ),

              _skillRow(
                title: "Backend & APIs",
                skills: [
                  "REST",
                  "Retrofit",
                  "Dio",
                  "Firebase",
                  "GraphQL",
                  "STT",
                  "TTS",
                  "Google Cloud APIs",
                ],
              ),

              _skillRow(
                title: "Databases",
                skills: ["Firebase Firestore", "SQLite", "Hive", "Room"],
              ),

              _skillRow(
                title: "Security",
                skills: [
                  "OAuth2",
                  "JWT",
                  "SSL Pinning",
                  "AES Encryption",
                  "Secure Storage",
                ],
              ),

              _skillRow(
                title: "CI/CD",
                skills: ["GitHub Actions", "Bitbucket Pipelines", "Jenkins"],
              ),

              _skillRow(
                title: "Testing",
                skills: [
                  "Unit Testing",
                  "Widget Testing",
                  "Integration Testing",
                  "TDD",
                ],
              ),

              _skillRow(
                title: "Monitoring",
                skills: ["Firebase Analytics", "Crashlytics", "DataDog"],
              ),

              _skillRow(
                title: "Methodologies",
                skills: [
                  "Agile",
                  "Scrum",
                  "SDLC",
                  "Architecture Reviews",
                  "Release Management",
                ],
              ),
            ],
          ),
        ),

        _divider(),
      ],
    );
  }

  Widget _skillRow({required String title, required List<String> skills}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$title:",
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: skills.map((e) => SkillChip(e)).toList(),
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28),
      child: Container(width: 120, height: 1, color: const Color(0xFFD1D5DB)),
    );
  }
}
