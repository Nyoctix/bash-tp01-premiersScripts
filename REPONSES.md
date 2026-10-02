# Réponses aux questions du TP01 - Premiers scripts Bash

**Nom :** [Votre nom]
**Classe :** [Votre classe]
**Date :** [Date]

---

## Exo 1 : Table de multiplication

### Question 1 : Validation d'entrée
**Comment vérifier que l'utilisateur a bien entré un nombre ?**

Votre réponse : ! "$a" =~ ^-?[0-9]+$
```
[Expliquez ici votre méthode de validation]
avec cette formule on vérifie si le nombre est un entier négatif ou positif
```

### Question 2 : Boucle
**Quelle structure de boucle est la plus appropriée (for, while) ? Pourquoi ?**

Votre réponse : While et for
```
[Expliquez votre choix de boucle]
J'ai utiliser while pour vérifier le nombre pour ne pas avoir de limite d'erreur et j'ai utiliser for pour la table de mutliplication pour être arrêté à 10
```

### Question 3 : Extension
**Comment pourriez-vous permettre à l'utilisateur de choisir jusqu'à quel multiplicateur aller ?**

Votre réponse : lui demander de choisir la valeur max du multiplicateur
```
[Décrivez votre approche]
au lieu de limiter a 10 mettre une limite a par exemple b et demander au début de programme a l'utilisateur de choisir la valeur de a (nombre a multiplier) et b (multiplicateur) 
```

---

## Exo 2 : Jeu de devinette

### Question 1 : Gestion des paramètres
**Que se passe-t-il si l'utilisateur ne fournit pas exactement 2 paramètres ? Comment gérer ce cas ?**

Votre réponse : si il ne fournit pas 2 paramètres le code ne se lance pas
```
[Expliquez la gestion des paramètres]
J'ai utiliser cette formule "$#" -ne 2 avec un if 
```

### Question 2 : Validation
**Comment vérifier que le premier paramètre est bien inférieur au second ?**

Votre réponse : avec la commande -gt
```
[Décrivez votre validation]
on fait un if [$1 -gt $2]
```

### Question 3 : Compteur
**Expliquez comment vous gérez le décompte des essais restants.**

Votre réponse : on donne le nombre d'essai max puis on réduit 1 a chaque tour dans la boucle while et il s'arrêtera quand il sera égal à 0
```
[Expliquez votre logique de compteur]
essais=$(($essais-1))
```

### Question 4 : Comparaisons
**Quelle syntaxe utilisez-vous pour comparer des nombres en Bash ?**

Votre réponse : on utilise $
```
[Donnez des exemples de syntaxe]
$1
```

---

## Exo 3 : Traitement de fichiers

### Question 1 : Paramètres
**Comment vérifier que le dossier passé en paramètre existe et est bien un répertoire ?**

Votre réponse :
```
[Expliquez vos tests de validation]
```

### Question 2 : Sécurité
**Que se passe-t-il si deux fichiers ont le même nom après transformation ? Comment gérer ce cas ?**

Votre réponse :
```
[Décrivez le problème et votre solution]
```

### Question 3 : Extension
**Comment pourriez-vous permettre à l'utilisateur de choisir l'extension à traiter ?**

Votre réponse :
```
[Proposez une solution]
```

### Question 4 : Variables
**Expliquez l'intérêt d'utiliser des variables pour stocker les compteurs.**

Votre réponse :
```
[Argumentez l'utilisation de variables]
```

---

## Notes et remarques

[Ajoutez ici vos remarques personnelles, difficultés rencontrées, améliorations possibles, etc.]
