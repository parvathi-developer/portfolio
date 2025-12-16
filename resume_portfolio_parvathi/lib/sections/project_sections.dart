import 'package:flutter/material.dart';
import 'package:resume_portfolio_parvathi/widgets/content_container.dart';
import '../widgets/section_title.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle("Key Projects"),
        _divider(),

        ContentContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _projectBlock(
                title: "GE Appliance: Haier – Every Voice Everywhere",
                skills:
                    "FlutterFlow, Flutter, Firebase, STT, TTS, REST APIs, RBAC",
                points: [
                  "Architected an enterprise-grade multilingual communication platform enabling real-time chat and voice collaboration for factory-floor employees.",
                  "Implemented Speech-to-Text (STT) and Text-to-Speech (TTS) to support hands-free operation in industrial environments.",
                  "Designed and integrated role-based access control (RBAC) for secure user management, group administration, and permissions.",
                  "Built scalable real-time messaging using Firebase Firestore with optimized data models and indexing.",
                  "Ensured performance and reliability through efficient state management, optimized networking, and background processing.",
                ],
              ),

              _projectBlock(
                title: "QurBook – Personalized Health Platform",
                skills:
                    "Flutter, Dart, BLoC, Firebase, REST APIs, Offline Sync",
                points: [
                  "Developed an AI-driven healthcare application delivering personalized health plans and recommendations.",
                  "Designed offline-first architecture with secure API synchronization for reliable usage in low-network conditions.",
                  "Implemented BLoC state management to improve maintainability, scalability, and predictable state handling.",
                  "Integrated Firebase Analytics and Crashlytics to monitor user behavior and application stability.",
                  "Improved user engagement and app reliability through performance optimization and robust error handling.",
                ],
                link:
                    "https://play.google.com/store/apps/details?id=com.ventechsolutions.myFHB",
              ),

              _projectBlock(
                title: "QurPro – Smart Doctor Consultation App",
                skills:
                    "Flutter, BLoC, Firebase, Dio, Agora SDK, Video Calling",
                points: [
                  "Built a secure telemedicine platform supporting video consultations, real-time chat, and patient data management.",
                  "Integrated live video calling using Agora SDK with optimized network handling for low-latency communication.",
                  "Implemented secure authentication, authorization, and scalable backend integrations using Firebase and REST APIs.",
                  "Designed modular architecture to support rapid feature enhancements and long-term scalability.",
                  "Ensured data privacy and reliability for healthcare workflows through structured error handling and monitoring.",
                ],
                link:
                    "https://play.google.com/store/apps/details?id=com.ventechsolutions.goFHB",
              ),

              _projectBlock(
                title: "Ascent Insta – Bharat Benz",
                skills: "Kotlin, Jetpack Compose, MVVM, Android",
                points: [
                  "Developed a high-performance Android application featuring 360-degree truck visualization and dynamic UI rendering.",
                  "Applied MVVM architecture and Jetpack Compose to improve UI consistency and reduce rendering complexity.",
                  "Optimized performance and memory usage for smooth animations and complex visual components.",
                  "Collaborated with design and product teams to deliver a visually rich and responsive user experience.",
                ],
              ),

              _projectBlock(
                title: "Tata Smart Manual – Interactive App for Cars",
                skills: "Xamarin.Forms, C#, MVC, Offline Storage",
                points: [
                  "Designed and developed an interactive, offline-first digital car manual application for Tata Motors vehicles.",
                  "Implemented efficient offline storage and synchronization for consistent access in low-connectivity environments.",
                  "Optimized content rendering and navigation for improved usability and faster load times.",
                  "Delivered a stable, production-ready application used by end customers across multiple vehicle models.",
                ],
                link:
                    "https://play.google.com/store/apps/details?id=com.tml.knowyourcar",
              ),
            ],
          ),
        ),

        _divider(),
      ],
    );
  }

  Widget _projectBlock({
    required String title,
    required String skills,
    required List<String> points,
    String? link,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            skills,
            style: const TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.italic,
              color: Color(0xFF374151),
            ),
          ),
          const SizedBox(height: 10),
          ...points.map(
            (point) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("•  "),
                  Expanded(
                    child: Text(
                      point,
                      style: const TextStyle(
                        fontSize: 15,
                        height: 1.6,
                        color: Color(0xFF374151),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (link != null) ...[
            const SizedBox(height: 6),
            SelectableText(
              link,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF111827),
                decoration: TextDecoration.underline,
              ),
            ),
          ],
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
