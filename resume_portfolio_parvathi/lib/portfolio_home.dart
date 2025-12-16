import 'package:flutter/material.dart';
import 'package:resume_portfolio_parvathi/sections/education_sections.dart';
import 'package:resume_portfolio_parvathi/sections/footer_section.dart';
import 'package:resume_portfolio_parvathi/widgets/fade_slide.dart';
import 'sections/sections_import_classes.dart';
import 'package:flutter/material.dart';
import '../widgets/top_nav_bar.dart';
import '../widgets/fade_slide.dart';

class PortfolioHome extends StatelessWidget {
  PortfolioHome({super.key});

  // Section keys
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey experienceKey = GlobalKey();
  final GlobalKey educationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main scrollable content
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 64), // space for sticky nav
            child: Column(
              children: [
                const FadeSlide(child: HeaderSection()),

                FadeSlide(child: AboutSection(key: aboutKey)),

                FadeSlide(child: SkillsSection(key: skillsKey)),

                FadeSlide(child: ExperienceSection(key: experienceKey)),

                FadeSlide(child: ProjectsSection(key: projectsKey)),

                FadeSlide(child: EducationSection(key: educationKey)),

                const FooterSection(),
              ],
            ),
          ),

          // Sticky top navigation
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: TopNavBar(
              sections: {
                "About": aboutKey,
                "Skills": skillsKey,
                "Experience": experienceKey,
                "Projects": projectsKey,
                "Education": educationKey,
              },
            ),
          ),
        ],
      ),
    );
  }
}
