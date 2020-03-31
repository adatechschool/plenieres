# Déployer une page index.php avec Heroku

## Sommaire

- [Discussions sur la notion de
  déploiement](#discussions-sur-la-notion-de-déploiement)
  - [Objectifs pédagogiques](#objectifs-pédagogiques)
  - [Questions à se poser](#questions-à-se-poser)
- [Mise en pratique](#mise-en-pratique)
  - [Outils nécessaires](#outils-nécessaires)
  - [Installation de PHP](#installation-de-php)
  - [Création d'une page en PHP](#création-dune-page-en-php)
  - [Afficher la page en local](#afficher-la-page-en-local)
  - [Initier un repo Git](#initier-un-repo-git)
  - [Créer un compte Heroku](#créer-un-compte-heroku)
  - [Déployer avec Heroku](#déployer-avec-heroku)

## Discussions sur la notion de déploiement et d'environnement de production

L'objectif de la plénière est de déployer ensemble en production une page web
afin de comprendre les notions de serveur local et serveur distant.

### Objectifs pédagogiques

- Comprendre la différence entre serveur local et serveur distant
- Utiliser Git pour avoir une version de code de référence pour son application
- Apprendre à paramétrer un outil de deploiement en ligne
  (ici [Heroku](https://www.heroku.com/))

### Questions à se poser

- Que signifie deployer une application web ?
- Quelles sont les différentes manières de déployer ?
- Qui est en charge du déploiement d'une application web dans un projet ?

## Mise en pratique

Pour comprendre concrètement comment fonctionne un déploiement et la notion de
serveur distant, nous allons créer ensemble une page index.php simple avec du
HTML et deux lignes de PHP et la déployer avec Heroku. A chaque étape, nous
détaillerons l'étape ensemble, puis vous la mettrez en pratique chacune de votre
côté.

### Outils nécessaires

- Git
- Un compte GitHub
- Un ordinateur par personne

### Installation de PHP

Sur MacOS, le langage PHP est installé de base.

Sur Linux :

```
sudo apt-get install php
```

### Création d'une page en PHP

> Avant de pouvoir déployer quoique ce soit, il est nécessaire d'avoir un début
> d'application web à déployer. Nous allons donc créer une petite page qui sera
> notre application.

1. Nous allons lire ensemble l'exemple de page du fichier `index.php`. C'est le
   moment de poser toutes les questions liées à cette page.
2. Puis, vous allez créer un nouveau répertoire et créer vous-même une page `index.php` dedans. Vous pouvez reprendre l'exemple dans son intégralité ou ajouter et changer ce que bon vous semble.

### Afficher la page en local

> Maintenant que la page est créée, il faut pouvoir l'afficher. Comment
> affiche-t-on une page en PHP sur son ordinateur ?

Nous allons apprendre à servir la page sur votre ordinateur personnel. Cela
s'appelle servir la page en local.

### Initier le repo Git

> Pour pouvoir déployer une version de notre application sur un autre
> environnment, nous avons besoin de versionner notre code afin de pouvoir
> récupérer la dernière version valide et commune de ce code.

Nous allons créer un nouveau répertoire distant sur votre compte GitHub et
initialiser votre projet avec la page `index.php`.

### Créer un compte Heroku

Prenez le temps de créer votre compte Heroku sur l'adresse suivante :
https://signup.heroku.com/

### Déployer avec Heroku

> Maintenant que notre application est prête, nous allons configurer Heroku pour
> pouvoir la déployer sur un environnement distant.

Nous allons creuser ensemble l'interface d'Heroku pour comprendre :
- ce qu'est un environnement distant,
- les étapes pour déployer une application.
