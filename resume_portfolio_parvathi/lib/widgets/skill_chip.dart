import 'package:flutter/material.dart';

class SkillChip extends StatefulWidget {
  final String label;
  const SkillChip(this.label, {super.key});

  @override
  State<SkillChip> createState() => _SkillChipState();
}

class _SkillChipState extends State<SkillChip> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: hover ? const Color(0xFFE5E7EB) : const Color(0xFFF3F4F6),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xFFD1D5DB)),
        ),
        child: Text(
          widget.label,
          style: const TextStyle(color: Color(0xFF111827), fontSize: 14),
        ),
      ),
    );
  }
}
