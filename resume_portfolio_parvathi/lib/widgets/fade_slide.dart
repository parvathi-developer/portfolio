import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class FadeSlide extends StatefulWidget {
  final Widget child;
  const FadeSlide({super.key, required this.child});

  @override
  State<FadeSlide> createState() => _FadeSlideState();
}

class _FadeSlideState extends State<FadeSlide>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacity;
  late Animation<Offset> offset;
  bool hasAnimated = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    opacity = Tween(begin: 0.0, end: 1.0).animate(controller);
    offset = Tween(
      begin: const Offset(0, 0.05),
      end: Offset.zero,
    ).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: UniqueKey(),
      onVisibilityChanged: (info) {
        if (!hasAnimated && info.visibleFraction > 0.2) {
          controller.forward();
          hasAnimated = true;
        }
      },
      child: FadeTransition(
        opacity: opacity,
        child: SlideTransition(position: offset, child: widget.child),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
