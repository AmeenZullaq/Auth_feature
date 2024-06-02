import 'package:flutter/material.dart';

class SplashAlignTransition extends StatefulWidget {
  const SplashAlignTransition({super.key, required this.child});
  final Widget child;

  @override
  State<SplashAlignTransition> createState() => _SplashAlignTransitionState();
}

class _SplashAlignTransitionState extends State<SplashAlignTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<AlignmentGeometry> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animation = AlignmentTween(
      begin: Alignment.bottomCenter,
      end: Alignment.center,
    ).animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlignTransition(
      alignment: animation,
      child: widget.child,
    );
  }
}
