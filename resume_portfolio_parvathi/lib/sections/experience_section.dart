import 'package:flutter/material.dart';
import 'package:resume_portfolio_parvathi/widgets/content_container.dart';
import '../widgets/section_title.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle("Professional Experience"),
        _divider(),

        ContentContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _experienceBlock(
                role: "Flutter Architect / Team Lead – Mobile Engineering",
                company: "Tech Mahindra",
                location: "Bangalore, India",
                duration: "Dec 2024 – Present",
                points: [
                  "Architecting and owning a large-scale enterprise mobile chat and collaboration platform using Flutter, FlutterFlow, Android, and iOS.",
                  "Designed a real-time multilingual communication system to support global factory-floor operations.",
                  "Defined and enforced platform-wide mobile architecture standards including Clean Architecture, MVVM, BLoC, modularization, and dependency injection.",
                  "Designed and implemented role-based access control (RBAC), secure authentication, authorization flows, and permission management.",
                  "Integrated AI-powered BOT capabilities for policy discovery, workflow assistance, and employee complaint management.",
                  "Implemented Speech-to-Text (STT) and Text-to-Speech (TTS) for hands-free usage in industrial environments.",
                  "Ensured high scalability and performance through optimized networking, background processing, and real-time streaming.",
                  "Led and mentored a team of 5+ mobile engineers, driving architecture reviews, code quality, sprint planning, and release management.",
                ],
              ),

              _experienceBlock(
                role: "Mobile Architect / Senior Flutter Lead",
                company: "Qurhealth Solutions Pvt Ltd",
                location: "Remote / Chennai",
                duration: "Jul 2020 – Apr 2024",
                points: [
                  "Owned end-to-end mobile architecture for multiple healthcare products across Flutter and native platforms.",
                  "Designed scalable and secure Flutter architecture integrated with Firebase, REST APIs, and analytics platforms.",
                  "Led development of critical healthcare features with strong focus on data security, performance, and reliability.",
                  "Improved user engagement by 35% and reduced crash rates by 15% through architectural and performance optimizations.",
                  "Built reusable core modules and shared components, reducing development effort and improving delivery speed by 40%.",
                  "Acted as primary technical owner for mobile releases, production monitoring, and incident resolution.",
                  "Mentored and guided a team of 6 developers, establishing coding standards, review processes, and best practices.",
                ],
              ),
              _experienceBlock(
                role: "Contract Mobile Developer",
                company: "Object Frontier Software",
                location: "Chennai, India",
                duration: "Feb 2020 – Jul 2020",
                points: [
                  "Developed enterprise Flutter healthcare modules following clean UI and API abstraction principles.",
                  "Implemented reusable UI components and service layers to support rapid feature development.",
                  "Collaborated closely with backend, QA, and product teams to deliver secure, production-ready features on schedule.",
                ],
              ),

              _experienceBlock(
                role: "Senior Android Developer",
                company: "UTH Dev Holding Software India",
                location: "Chennai, India",
                duration: "Jun 2019 – May 2020",
                points: [
                  "Developed and maintained Android and Flutter applications with focus on performance, scalability, and UI consistency.",
                  "Led optimization efforts to improve rendering performance and reduce UI latency.",
                  "Collaborated with cross-functional teams to deliver high-quality features aligned with product requirements.",
                ],
              ),
              _experienceBlock(
                role: "Android Developer",
                company: "HnS Technologies",
                location: "Chennai, India",
                duration: "Nov 2016 – May 2019",
                points: [
                  "Developed the Tata Smart Manual Android application using offline-first architecture.",
                  "Implemented efficient data synchronization and caching mechanisms for low-connectivity environments.",
                  "Reduced application startup time by 20% through performance tuning and code optimization.",
                ],
              ),
              _experienceBlock(
                role: "Android Developer",
                company: "TVS Next",
                location: "Chennai, India",
                duration: "Aug 2014 – Oct 2016",
                points: [
                  "Developed Android applications for enterprise clients including Equitas and Sulekha.",
                  "Implemented REST API integrations, offline sync mechanisms, and UI enhancements.",
                  "Gained strong foundations in Android application lifecycle, debugging, and production support.",
                ],
              ),
            ],
          ),
        ),

        _divider(),
      ],
    );
  }

  Widget _experienceBlock({
    required String role,
    required String company,
    required String location,
    required String duration,
    required List<String> points,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$role | $company",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "$location  •  $duration",
            style: const TextStyle(fontSize: 14, color: Color(0xFF6B7280)),
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
