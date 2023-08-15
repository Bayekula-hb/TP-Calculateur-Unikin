## README Travail pratique de calculateur
Programme d'installation Travail pratique de calculateur


Date : 22.06.2022

## Objectif ##

Ce package regorge les logiciels important sur tous les Distributions derivées du DEBIAN avec un très large choix de paquets pour les Mathematiciens  et Informaticiens.


## Compatibilité ##

Le script est destiné principalement à la version de base des distributions derivées debian (Gnome).
Cela ne veux pas dire qu'il ne peut pas être utilisé sur une autre configuration mais qu'il a été testé/validé surtout pour celle-ci.

- Ce script est fait pour "Bash" (shell par défaut sous Ubuntu) mais pas pour les autres Shell donc si vous l'avez modifié manuellement sur votre Ubuntu pour mettre, par exemple, "Zsh" à la place, le script ne fonctionnera pas correctement (certaines fonctions non-compatibles).

- Si vous souhaitez utiliser le script sur une variante d'Ubuntu plutôt que la version de base (par exemple Xubuntu, Kubuntu, Ubuntu Mate, Linux Mint, ElementaryOS...), je vous recommande fortement au lancement de bien choisir l'option "Tous les choix décochés" par défaut afin de ne pas avoir des paquets utiles pour Gnome uniquement cochés par défaut (ce qui n'aura aucun intérêt pour vous vu que vous n'utilisez pas Gnome avec votre variante). Si vous utilisez KDE (notamment avec Kubuntu ou KDENeon), attention à bien cocher des logiciels cohérents avec cet environnement.

- Si vous souhaitez utiliser le script pour une ancienne version d'Ubuntu, par exemple la 18.04LTS, cela fonctionnera mais pas pour tous les logiciels, en effet certains s'installent avec une méthode spécifique pour la 20.04 qui ne marchera pas pour la 18.04. A noté que les Snaps/Flatpak/AppImage ne devraient poser à priori aucun problème quelle que soit la version (et même sur les autres distributions).

- Si vous avez besoin d'utiliser le script à distance via SSH, pensez à utiliser la paramètre "-X" afin d'avoir l'export graphique et donc d'avoir l'interface graphique Zenity (ssh -X login@....)

## Récupération / Lancement du script

Il y a 2 méthodes :

- Premiere methode: Télécharger le contenu du script sur ce github, décompresser le contenu, penser à mettre le droit d'execution sur le script et lancer le package à l'intérieur SANS sudo 

> wget https://github.com/Bayekula-hb/TP-Calculateur-Unikin.git &&
> unzip TP-Calculateur-Unikin.zip && 
> cd TP-Calculateur-Unikin/ && chmod +x TP-Calculateur-Unikin.sh &&
> ./kgbacademia.sh

- Deuxieme methode: utiliser le site web (Sous une distribution linux "Bash").

> http://tpscript.africultureshop.com/