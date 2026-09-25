#!/bin/bash

################################################################################
# Script : table_multiplication.sh
# Description : Affiche la table de multiplication d'un nombre
# Auteur : [GAILLARD Théo]
# Date : [25/09/2026]
################################################################################

# TODO: Demander un nombre à l'utilisateur
echo "Donne moi un nombre : "
read a # Saisi du nombre a multiplier
# TODO: Valider que l'entrée est bien un nombre
while [[ ! "$a" =~ ^-?[0-9]+$ ]]; do
    read -p "Erreur ! Ce n'est pas un nombre entier : " a
done
# TODO: Afficher la table de multiplication de 1 à 10
for i in {1..10}
do
    echo "résultat de la multiplication $a x $i = $(($a*$i))"
done
