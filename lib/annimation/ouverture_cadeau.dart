import 'package:flutter/material.dart';

class OpeningGiftAnimation extends StatefulWidget {
  final VoidCallback onCompleted;

  const OpeningGiftAnimation({super.key, required this.onCompleted});

  @override
  _OpeningGiftAnimationState createState() => _OpeningGiftAnimationState();
}

class _OpeningGiftAnimationState extends State<OpeningGiftAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    // Animation de rotation qui oscille de -0.1 à 0.1 radians
    _rotationAnimation = Tween<double>(begin: -0.1, end: 0.1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticIn),
    );

    // Animation d'agrandissement
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.5).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.repeat(reverse: true); // Répète l'animation de rotation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    _controller.stop(); // Arrête l'animation de rotation
    widget.onCompleted(); // Redirige vers la page du cadeau après le clic
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior
          .translucent, // Rend tout le widget cliquable, même en dehors de l'image
      onTap: _handleTap,
      child: Center(
        // Centre l'animation du cadeau sur l'écran
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.rotate(
              angle: _rotationAnimation.value, // Applique la rotation
              child: Transform.scale(
                scale: _scaleAnimation.value,
                child: Image.asset(
                  'assets/gift_image.png', // Remplacez par votre image de cadeau
                  width: 100,
                  height: 100,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
