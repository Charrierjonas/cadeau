import "package:Nume/annimation/animation.dart";
import "package:flutter/material.dart";

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
      fontFamily: "VotrePolice", // Remplacez par le nom de la police souhaitée
      fontWeight: FontWeight.bold, // Optionnel pour donner un style gras
    ),
  );
}

final List<Cadeau> cadeaux = [
  Cadeau(
    nom: "Premier Cadeau",
    indice: 1,
    widgetarriere: texteToWidget(
        "Coucou Nume ! Aujourd'hui c'est le premier mot que tu ouvres sur une série de 25 ! Tu pourras en découvrir un nouveau chaque jour ! Il va encore falloir attendre pour tout lire <3 \r\n Bon calendrier de l'avent !"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "6 mois",
    indice: 2,
    widgetarriere: texteToWidget(
        "Ce jour, cela fait pile 6 mois que tu es rentrée dans ma vie ! En participant au tournoi des sponsors et en envoyant la photo ! Il n'en fallait pas plus pour que tout s'enchaine derrière. Que des bons choix :)"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "NUME",
    indice: 3,
    widgetarriere: texteToWidget(
        "N : Nécessaire \r\n U : Utopie\r\n M : Merveilleuse \r\n E : Exceptionnelle"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Définition de toi",
    indice: 4,
    widgetarriere: texteToWidget(
        "Bon c'est le moment de dire des choses que je dis pas souvent ! Ce qui est dingue avec toi c'est que tout s'est fait naturellement, je n'ai jamais eu l'impression d'être obligé de forcer ! Tu es la personne la plus dingue et incroyable que j'ai rencontré, je t'aime "),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Bisous",
    indice: 5,
    widgetarriere: texteToWidget(
        "Faison un peu plus simple aujourd'hu, je ne sais pas si on sera physique ensemble aujourd'hui mais je te fais plein de bisous ! (une infinité !)"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Fin de Rainbow",
    indice: 6,
    widgetarriere: texteToWidget(
        "Il y a 6 mois c'était la fin de Rainbow, on a commencé à parler sur instagram ! Il faut dire que tchatcher par Rainbow c'est quand même pas pro ! Le but de la discussion n'était évidemment pas de travailler ;)"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "En 3 mots",
    indice: 7,
    widgetarriere: texteToWidget(
        "Voila aujourd'hui je te décris en 3 mots / phrases : \r\n - Belle comme l'étoile la plus brillante du ciel \r\n - Joueuse avec le sens de l'humour, que demande le peuple \r\n - A la bourre un peu (il faut bien le dire)"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Ticket 1",
    indice: 8,
    widgetarriere: texteToWidget(
        "Ticket !\r\n Tu as gagné un ticket petit plat, quand tu veux la personne que tu aimes dois te faire le plat que tu souhaites"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Sens de Nume",
    indice: 9,
    widgetarriere: texteToWidget(
        "Du latin numen (« divinité »). C'est un peu toi, tu es arrivée de nul part et maintanant je crois que en toi"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "The Numero",
    indice: 10,
    widgetarriere: texteToWidget(
        "C'est un jour spéciale, le jour de nos numéros de basket ! C'est quand même eux qui nous prenne le plus de temps dans la semaine donc bonne fête numéro 10 <3 !"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Ton horoscope",
    indice: 11,
    widgetarriere: texteToWidget(
        "AMOUR: Votre relation est stable et votre partenaire est dingue de vous \r\n TRAVAIL: Vous êtes active mais cela risque de changer dans le mois qui suivent \r\n SANTE: Tout roule à l'inverse de l'autre qui à la cheville en vrac \r\n ARGENT: Vous en avez un peu en stock mais plus dans 5 mois"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Ticket 2",
    indice: 12,
    widgetarriere: texteToWidget(
        "Ticket !\r\n Tu as gagné un ticket coquin, tu le sors quand tu veux et ton amoureux ne peux rien te refuser ;)"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Pourquoi toi ?",
    indice: 13,
    widgetarriere: texteToWidget(
        "Oui pourquoi ? Tu es belle, attentionné et tu as su être la au bon endroit au bon moment pour que nos chemins se croise ! C'est surement un signe du destin ! J'ai jamais été le roi de la communication mais avec toi c'est quand même super facile !"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Mot pour Nume",
    indice: 14,
    widgetarriere: texteToWidget(
        "Un message simple pour toi : J'espère que le temps qu'il me reste à tes côtés est infinis, peu importe ou et quand tu te sentiras seule tu auras juste à penser à moi ! Moi je penserais aussi faorcément à toi même si je dors ;)"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Ticket 3",
    indice: 15,
    widgetarriere: texteToWidget(
        "Ticket !\r\n Tu as gagné un ticket Massage, tu le sors quand tu veux et ton amoureux dois te faire un massage ..."),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "The date et the Date",
    indice: 16,
    widgetarriere: texteToWidget(
        "Il y a 6 mois nous avons fait un Date à la salle de basket (Plutôt unique) puis après avec manger nous nous sommes embrassé pour la première fois, trop bien !"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Ticket 4",
    indice: 17,
    widgetarriere: texteToWidget(
        "Ticket !\r\n Tu as gagné un ticket restaurant, tu le sors quand tu veux et hop un restaurant offert par la maison"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "4 mois <3",
    indice: 18,
    widgetarriere: texteToWidget(
        "Bon la c'est le meilleur jour en fait car ça fait pile 5 mois qu'on est ensemble ! Bon anniversaire Nume ! je t'aime <3 !"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Rappel de mon étoile",
    indice: 19,
    widgetarriere: texteToWidget(
        "On est allé au planétarium de Nantes il y a 2 mois et c'est la que je me suis rendu compte que l'étoile la plus brillante de mon ciel étoilé c'était toi en fait "),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Près du coeur",
    indice: 20,
    widgetarriere: texteToWidget(
        "Ce soir c'est le tournoi 3*3 de Trémentines donc j'imagine qu'on ne passera pas la soirée ensemble mais sache que loin des yeux près du coeur et ce sera encore plus vrai quand tu seras rendu à l'autre bout du monde !"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Hiver",
    indice: 21,
    widgetarriere: texteToWidget(
        "C'est le premier jour de l'hiver ! Le grand froid arrive il va être temps de se cacher sous un plaid et de commencer une série tout les deux ! Vivement passer le début de l'hiver à tes cotés"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Horoscope de Noël",
    indice: 22,
    widgetarriere: texteToWidget(
        "AMOUR: Vous avez trouvez LA personne, continuez sur cette voie \r\n TRAVAIL: Continuez à travailler vous en avez besoin mais attention au craquage \r\n SANTE: Préserver votre estomac il lui reste encore du chemin à parcourir \r\n ARGENT: Les comptes sont vide... Vous avez tout claqué pour votre homme"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Ticket bisous ",
    indice: 23,
    widgetarriere: texteToWidget(
        "Ticket !\r\n Tu as gagné un ticket bisous, tu le sors quand tu veux et tu auras des bisous en illimité, attention à ne pas t'étouffer !"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Reveillon",
    indice: 24,
    widgetarriere: texteToWidget(
        "Youhou c'est la veille de Noël ! A nous les repas à rallonge et les cadeaux demain ! Ensemble ou pas ensemble je t'offre un énorme calin en premier cadeau !"),
    widgetavant: const AnimatedHeartIcon(),
  ),
  Cadeau(
    nom: "Noël",
    indice: 25,
    widgetarriere: texteToWidget(
        "C'est bon c'est enfin Noël, je ne peux malheureusement rien te réveler sur les cadeaux que tu vas avoir... Mais sache que pour moi tu es déjà le plus beau cadeau que j'ai reçu cette année ! C'est aussi malheureusement le dernier message ! A très vite Nume <3"),
    widgetavant: const AnimatedHeartIcon(),
  ),
];
