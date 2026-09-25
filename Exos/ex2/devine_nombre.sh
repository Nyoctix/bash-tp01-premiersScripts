#!/bin/bash

################################################################################
# Script : devine_nombre.sh
# Description : Jeu de devinette - trouver un nombre aléatoire
# Usage : ./devine_nombre.sh <min> <max> [difficile]
# Auteur : [Votre nom]
# Date : [Date]
################################################################################

# TODO: Vérifier que 2 paramètres sont fournis
echo -p "Donne moi un nombre entier : " a # plus petit nombre
echo -p "Donne moi un nombre entier plus grand que le dernier : " b # plus grand nombre

# TODO: Valider que les paramètres sont des nombres
while [[ ! "$a" =~ ^-?[0-9]+$ ]]; do
    read -p "Erreur ! Ce n'est pas un nombre entier : " a
done
while [[ ! "$b" =~ ^-?[0-9]+$ ]]; do
    read -p "Erreur ! Ce n'est pas un nombre entier : " a
done

# TODO: Valider que min < max
while [[a -gt b]]
    read -p "Erreur ! Le premier nombre est plus grand" a

# TODO: Générer un nombre aléatoire entre min et max


# TODO: Initialiser le nombre d'essais (5 par défaut, 3 en mode difficile)


# TODO: Boucle de jeu avec 5 essais maximum


# TODO: Afficher le message de fin (victoire ou défaite)

