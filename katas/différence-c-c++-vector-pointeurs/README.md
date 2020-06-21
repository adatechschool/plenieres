# Kata : illustration de différence fondamentale entre C et C++

## Pourquoi ce kata

Le C et le C++, malgré leur nom similaire et des syntaxes très proches, sont
très différents. Le paradigme objet du C++ et sa [bibliothèque
standard](https://fr.wikipedia.org/wiki/Biblioth%C3%A8que_standard_du_C%2B%2B)
lui confèrent des outils qui n'existent pas en C, par exemple pour gérer des
structures de données comme les tableaux, listes, dictionnaires, etc.

Ce kata vise à illustrer cette différence en codant une fonctionnalité identique
d'un côté en C et de l'autre en C++.

## Sujet du kata

À coder d'un côté en C, de l'autre en C++. En C++, l'utilisation de pointeurs
est interdite.

Écrire un programme qui demande à l'utilisatrice de taper un entier, et qui
répète cette demande jusqu'à ce que l'entier entré soit strictement négatif.

Une fois qu'un entier strictement négatif a été entré, le programme doit
afficher tous les entiers qui ont été tapés jusque là puis s'arrêter.

Il faut donc stocker en mémoire (par exemple dans un tableau) chaque entier
entré par l'utilisatrice pour pouvoir les restituer tous à la fin.

## Indications et pistes de recherche

### Aperçu de l'algorithme

En pseudo-code, le programme se résume à quelque chose comme :

```
soit tab un tableau vide d'entiers
soit e un entier

faire
  e ← saisie clavier
  ajouter e à tab
tant que e ≥ 0

pour chaque élément i de tab
  afficher i
fin
```

### Un tableau d'entiers en C

La difficulté principale est qu'on ne connait pas à l'avance le nombre d'entiers
que l'utilisatrice entrera.

On peut au choix dimensionner un tableau très grand en espérant qu'il soit assez
grand (mais cela peut en revanche représenter un gachis de mémoire), ou utiliser
un pointeur et de l'allocation dynamique de mémoire avec `malloc()`.

### Un tableau d'entiers en C++

Regarder comment on utilise la [classe
`vector`](http://www.cplusplus.com/reference/vector/vector/) fournie par la
bibliothèque standard.
