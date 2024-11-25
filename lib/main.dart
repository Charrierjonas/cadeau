import 'package:Nume/annimation/ouverture_cadeau.dart';
import 'package:Nume/model/cadeau.dart';
import 'package:Nume/page/coming_soon_page.dart';
import 'package:Nume/page/gift_page.dart';
import 'package:Nume/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DecemberNavigator(),
    );
  }
}

class DecemberNavigator extends StatelessWidget {
  const DecemberNavigator({super.key});

  Future<bool> checkIfOpened(int day) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('opened_$day') ?? false;
  }

  Future<void> openGift(int day) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('opened_$day', true);
  }

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final bool isDecember = now.month == 11 && now.year == 2024;
    final int dayOfMonth = now.day;

    if (!isDecember) {
      // Avant décembre, on affiche une page "Arrive bientôt"
      return const ComingSoonPage();
    } else if (dayOfMonth >= 1 && dayOfMonth <= 24) {
      // En décembre, planifier une notification pour le jour
      // En décembre, vérifie si le cadeau du jour est ouvert
      return FutureBuilder<bool>(
        future: checkIfOpened(dayOfMonth),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
                body: Center(child: CircularProgressIndicator()));
          }

          bool isOpened = snapshot.data ?? false;
          if (isOpened) {
            return const HomePage();
          } else {
            Cadeau cadeauDuJour = cadeaux[dayOfMonth - 1];
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _showOpeningAnimation(context, cadeauDuJour, dayOfMonth);
            });
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      );
    } else {
      // Si la date est en dehors de la plage du calendrier de l'avent
      return const Scaffold(
        body: Center(
          child: Text("Cadeaux épuisés pour décembre!",
              style: TextStyle(fontSize: 24)),
        ),
      );
    }
  }

  void _showOpeningAnimation(BuildContext context, Cadeau cadeau, int day) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: OpeningGiftAnimation(
            onCompleted: () async {
              await openGift(day);
              Navigator.of(context).pop(); // Ferme le dialogue d'animation
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GiftPage(cadeau: cadeau, day: day),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
