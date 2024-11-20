import 'package:flutter/material.dart';

class AnimatedGiftIcon extends StatefulWidget {
  const AnimatedGiftIcon({super.key});

  @override
  _AnimatedGiftIconState createState() => _AnimatedGiftIconState();
}

class _AnimatedGiftIconState extends State<AnimatedGiftIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(); // Répète l'animation indéfiniment
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child: const Icon(Icons.card_giftcard, size: 100, color: Colors.red),
    );
  }
}
