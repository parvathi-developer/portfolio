import 'package:flutter/material.dart';
import '../widgets/section_title.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle("About Me"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(fontSize: 16, height: 1.6),
              children: [
                TextSpan(text: "Flutter and Android Lead Developer with over "),
                TextSpan(
                  text: "10 years of experience ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: "designing and delivering scalable "),
                TextSpan(
                  text: "mobile and web applications",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: ". Strong expertise in "),
                TextSpan(
                  text:
                      "Flutter, FlutterFlow, Dart, Android (Kotlin), Firebase",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      ", REST API integration, and CI/CD pipelines. Experienced in ",
                ),
                TextSpan(
                  text: "clean architecture and MVVM",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      ", performance optimization, and secure application development. Proven ability to ",
                ),
                TextSpan(
                  text: "lead teams, mentor developers",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      ", collaborate with cross-functional stakeholders, and deliver ",
                ),
                TextSpan(
                  text: "high-quality, production-ready solutions",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      " across startup, product, and enterprise environments.",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
