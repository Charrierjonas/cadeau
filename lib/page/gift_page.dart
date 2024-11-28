import 'package:Nume/model/cadeau.dart';
import 'package:Nume/page/home_page.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GiftPage extends StatefulWidget {
  final Cadeau cadeau;
  final int day;

  const GiftPage({super.key, required this.cadeau, required this.day});

  @override
  _GiftPageState createState() => _GiftPageState();
}

class _GiftPageState extends State<GiftPage> {
  bool _isButtonVisible = true;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _markAsOpened() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('opened_${widget.day}', true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            widget.cadeau.nom,
            style: const TextStyle(
              fontSize: 24, // Taille plus grande du texte
              color: Colors.white, // Texte en blanc
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.red, // Fond rouge
        automaticallyImplyLeading: false, // Supprime le bouton retour
      ),
      body: Container(
        color: const Color.fromARGB(
            255, 247, 177, 177), // Changez cette couleur comme souhaité
        child: Center(
          // Centre le contenu de la page
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centre le contenu
            children: [
              const SizedBox(height: 100),
              FlipCard(
                fill: Fill.fillBack,
                direction: FlipDirection.HORIZONTAL,
                speed: 600,
                front: Container(
                  width: 350, // Taille plus grande
                  height: 500, // Taille plus grande
                  padding: const EdgeInsets.symmetric(
                      horizontal:
                          40.0), // Ajuste les marges latérales si nécessaire
                  decoration: BoxDecoration(
                    color: Colors.white, // Changez la couleur ici si nécessaire
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      widget.cadeau.widgetavant,
                    ],
                  ),
                ),
                back: Container(
                  width: 250, // Taille plus grande
                  height: 250, // Taille plus grande
                  decoration: BoxDecoration(
                    color: Colors
                        .redAccent, // Changez la couleur ici si nécessaire
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      widget.cadeau.widgetarriere,
                    ],
                  ),
                ),
              ),
              Expanded(
                child:
                    Container(), // Utilisation de Expanded pour prendre tout l'espace restant
              ),
              if (_isButtonVisible)
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.9, // Largeur du bouton
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20),
                      elevation: 5,
                    ),
                    onPressed: () async {
                      await _markAsOpened();
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                        (Route<dynamic> route) =>
                            false, // Retire toutes les routes précédentes
                      );
                    },
                    child: const Text(
                      'Cadeau ouvert !',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 235, 70, 70),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
