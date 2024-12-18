import 'package:Nume/annimation/ouverture_cadeau.dart';
import 'package:Nume/model/cadeau.dart';
import 'package:Nume/page/gift_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
    final bool isDecember = now.month == 12 && now.year == 2024;
    var today = isDecember ? now.day : 0;
    if (now.year > 2024) {
      today = 26;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Tous les cadeaux",
            style: TextStyle(
              fontSize: 30, // Taille plus grande du texte
              color: Colors.white, // Texte en blanc
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 16.0),
        itemCount: today,
        itemBuilder: (context, index) {
          int day = index + 1;

          if (day - 1 >= cadeaux.length) {
            return null;
          }

          Cadeau cadeauDuJour = cadeaux[day - 1];

          return FutureBuilder<bool>(
            future: checkIfOpened(day),
            builder: (context, snapshot) {
              bool isOpened = snapshot.data ?? false;

              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  child: Text(
                    "$day",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: isOpened
                    ? Text(
                        cadeauDuJour.nom,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      )
                    : ElevatedButton(
                        onPressed: () async {
                          await openGift(day);
                          _showOpeningAnimation(context, cadeauDuJour, day);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 20),
                          elevation: 5,
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Ouvrir",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GiftPage(
                        cadeau: cadeauDuJour,
                        day: day,
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  void _showOpeningAnimation(BuildContext context, Cadeau cadeau, int day) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: OpeningGiftAnimation(
            onCompleted: () {
              Navigator.of(context).pop(); // Ferme le dialog
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
