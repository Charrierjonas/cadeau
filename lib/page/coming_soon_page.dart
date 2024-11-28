import 'package:flutter/material.dart';

class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
            "Tu vas encore devoir attendre un peu ! \r\n Reviens le 1er décembre ;)",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
