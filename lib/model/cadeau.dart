import 'package:cadeau/annimation/animation.dart';
import 'package:flutter/material.dart';

class Cadeau {
  final String nom;
  final int indice; // Numéro du jour de décembre
  final Widget widgetarriere; // Contenu à afficher pour ce cadeau
  final Widget widgetavant; // Contenu à afficher pour ce cadeau

  Cadeau(
      {required this.nom,
      required this.indice,
      required this.widgetarriere,
      required this.widgetavant});
}

Widget texteToWidget(String texte) {
  return Text(
    texte,
    textAlign: TextAlign.center, // Centre le texte sur les retours à la ligne
    style: const TextStyle(
      color: Colors.white, // Texte en blanc
      fontSize: 24, // Texte plus grand
      fontFamily: 'VotrePolice', // Remplacez par le nom de la police souhaitée
      fontWeight: FontWeight.bold, // Optionnel pour donner un style gras
    ),
  );
}

final List<Cadeau> cadeaux = [
  Cadeau(
    nom: 'Premier Cadeau pour Nume',
    indice: 1,
    widgetarriere: texteToWidget('Surprise du 1 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: '6 mois',
    indice: 2,
    widgetarriere:
        texteToWidget('6 mois que tu es rentré dans ma vie petite Nume'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'NUME',
    indice: 3,
    widgetarriere: texteToWidget('Surprise du 3 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 4 décembre',
    indice: 4,
    widgetarriere: texteToWidget('Surprise du 4 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 5 décembre',
    indice: 5,
    widgetarriere: texteToWidget('Surprise du 5 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 6 décembre',
    indice: 6,
    widgetarriere: texteToWidget('Surprise du 6 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 7 décembre',
    indice: 7,
    widgetarriere: texteToWidget('Surprise du 7 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 8 décembre',
    indice: 8,
    widgetarriere: texteToWidget('Surprise du 8 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 9 décembre',
    indice: 9,
    widgetarriere: texteToWidget('Surprise du 9 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 10 décembre',
    indice: 10,
    widgetarriere: texteToWidget('Surprise du 10 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 11 décembre',
    indice: 11,
    widgetarriere: texteToWidget('Surprise du 11 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 12 décembre',
    indice: 12,
    widgetarriere: texteToWidget('Surprise du 12 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 13 décembre',
    indice: 13,
    widgetarriere: texteToWidget('Surprise du 13 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 14 décembre',
    indice: 14,
    widgetarriere: texteToWidget('Surprise du 14 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 15 décembre',
    indice: 15,
    widgetarriere: texteToWidget('Surprise du 15 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: '5 mois XOXO',
    indice: 16,
    widgetarriere: texteToWidget('Surprise du 16 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 17 décembre',
    indice: 17,
    widgetarriere: texteToWidget('Surprise du 17 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: '4 mois <3',
    indice: 18,
    widgetarriere: texteToWidget('Surprise du 18 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 19 décembre',
    indice: 19,
    widgetarriere: texteToWidget('Surprise du 19 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 20 décembre',
    indice: 20,
    widgetarriere: texteToWidget('Surprise du 20 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 21 décembre',
    indice: 21,
    widgetarriere: texteToWidget('Surprise du 21 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 22 décembre',
    indice: 22,
    widgetarriere: texteToWidget('Surprise du 22 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 23 décembre',
    indice: 23,
    widgetarriere: texteToWidget('Surprise du 23 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 24 décembre',
    indice: 24,
    widgetarriere: texteToWidget('Surprise du 24 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
  Cadeau(
    nom: 'Cadeau du 25 décembre',
    indice: 25,
    widgetarriere: texteToWidget('Surprise du 25 décembre!'),
    widgetavant: const AnimatedGiftIcon(),
  ),
];
