#!/bin/bash

################################################################################
# Script : devine_nombre.sh
# Description : Jeu de devinette - trouver un nombre aléatoire
# Usage : ./devine_nombre.sh <min> <max> [difficile]
# Auteur : [GAILLARD Théo]
# Date : [2/10]
################################################################################

# TODO: Vérifier que 2 paramètres sont fournis


# TODO: Valider que les paramètres sont des nombres
if [ "$#" -lt 2 ]; then
    echo "Erreur : Vous devez fournir au minimum les 2 nombres"
    exit 1
fi
if [[ ! $1 =~ ^-?[0-9]+$ ]]; then
    read -p "Erreur ! A n'est pas un nombre entier : " a
    exit 1 ;
elif [[ ! $2 =~ ^-?[0-9]+$  ]]; then
    read -p "Erreur ! B n'est pas un nombre entier : " b
    exit 1 ;
fi

# TODO: Valider que min < max
if [ $1 -gt $2 ]; then
    echo "Erreur ! Le premier nombre est plus grand"
    exit 1 ;
fi

# TODO: Générer un nombre aléatoire entre min et max
nombre=$(( $RANDOM % ($2 - $1 + 1) + $1 ))

# TODO: Initialiser le nombre d'essais (5 par défaut, 3 en mode difficile)
case "$3" in 
    facile) 
    echo "Niveau facile"
    essais=10
    ;;
    moyen)
    echo "Niveau moyen"
    essais=5
    ;;
    difficile) 
    echo "Niveau difficile"
    essais=3
    ;;
    *) 
    echo "Niveau facile par défaut"
    essais=10
    ;;
esac


# TODO: Boucle de jeu avec 5 essais maximum

while [ $essais -gt 0 ]; do
    echo "Nombre d'essais restant : $essais"
    essais=$(($essais-1))
    read -p "Devine le nombre aléatoire entre $1 et $2 : " x
if [ $x -eq $nombre ]; then
    echo "Nombre trouvé !"
    exit 1 ;
elif [ $x -lt $nombre ]; then
    echo "trop petit !"
elif [ $x -gt $nombre ]; then
    echo "trop grand !"
fi
done

# TODO: Afficher le message de fin (victoire ou défaite)
echo "Tu as perdu !"
exit 0 ;