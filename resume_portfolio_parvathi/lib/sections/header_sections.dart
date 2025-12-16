import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 90),
      alignment: Alignment.center,
      child: Column(
        children: [
          // Profile Image
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFFE5E7EB), width: 2),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x22000000),
                  blurRadius: 12,
                  offset: Offset(0, 6),
                ),
              ],
              image: const DecorationImage(
                image: AssetImage('assets/images/parvathi_photo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 28),

          const Text(
            "Parvathi M",
            style: TextStyle(
              fontSize: 44,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827),
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Flutter & Android Lead Developer",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color(0xFF374151),
            ),
          ),

          const SizedBox(height: 18),

          const Text(
            "10+ years | Flutter, FlutterFlow, Firebase, CI/CD | Team Leadership",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Color(0xFF4B5563)),
          ),
        ],
      ),
    );
  }
}
