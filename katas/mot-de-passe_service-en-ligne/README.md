# Stockage des mots de passe des utilisatrices d'un service en ligne

## Contexte

Tout service en ligne auquel il est nécessaire de s'inscrire (autant un réseau
social qu'un site marchand ou le site des impôts) doit stocker les comptes des
utilisatrices.

Cela implique au moins de stocker un identifiant (parfois c'est l'adresse
courriel qui est utilisée) et un mot de passe.

## Kata

Il ne faut jamais stocker les mots de passe des utilisatrices tel quel dans une
base de données. Aujourd'hui, ce serait considéré comme inacceptable pour tout
service utilisé par du public. Si vous le souhaitez, il peut être intéressant de
discuter du pourquoi de cette affirmation.

Il faut donc les chiffrer. On utilise des [fonctions de
hachage](https://fr.wikipedia.org/wiki/Fonction_de_hachage).

Côté code, l'idée est de programmer une brique de base d'un service web :
la création d'un compte utilisatrice.

Cela se décompose en deux éléments principaux :
- le backend : une fonction qui prend en paramètre deux chaines de caractères
  (l'identifiant et le mot de passe), qui chiffre le mot de passe avec une
  fonction de hachage puis qui stocke l'identifiant et le mot de passe chiffré
  dans une base de données (pour aller au plus simple, cela peut être un fichier
  CSV) ;
- le frontend : une page web avec un champ pour l'identifiant et un pour le mot
  de passe, et un bouton pour soumettre le formulaire d'inscription ;
- la colle entre le frontend et le backend : quand on clique sur le bouton du
  formulaire, il faut que le code du backend soit effectivement appelé !

Langages : pour le frontend, du HTML suffira. Pour le backend, Python, Ruby,
Javascript ou encore PHP sont populaires sans être les seuls envisageables.
