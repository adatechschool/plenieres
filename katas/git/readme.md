# Git

**Sommaire**
* [Discussion autour de Git](https://github.com/adatechschool/plenieres/tree/master/katas/git#discussion-autour-de-git)
    * [Objectifs pédagogiques](https://github.com/adatechschool/plenieres/tree/master/katas/git#objectifs-p%C3%A9dagogiques)
    * [Quelques questions à se poser](https://github.com/adatechschool/plenieres/tree/master/katas/git#quelques-questions-%C3%A0-se-poser)
* [Mise en pratique](https://github.com/adatechschool/plenieres/tree/master/katas/git#mise-en-pratique)
    * [Installation](https://github.com/adatechschool/plenieres/tree/master/katas/git#installation)
* [Ressources](https://github.com/adatechschool/plenieres/tree/master/katas/git#ressources)

## Discussion autour de Git

L'objectif de cette plénière est de présenter l'[outil de versionnage](https://fr.wikipedia.org/wiki/Logiciel_de_gestion_de_versions) Git pour comprendre à quoi il sert, comment et quand s'en servir.

### Objectifs pédagogiques
* Savoir utiliser Git
* Appréhender les principes d'un outil de versionnage parmi d'autres
* Améliorer son outillage pour le travail en équipe et le travail personnel
* Découvrir l'écosysteme créé autour d'un outil de versionnage

### Quelques questions à se poser
* A quoi sert un outil de versionnage ?
* connaissez-vous d'autres outils que Git ?
* Quel(s) outil(s) préférez-vous et pourquoi ?
* Comment mettriez-vous en place un outil de versionnage dans une équipe ?

## Mise en pratique

### Outils nécéssaires
- Git
- Github (ou assimilé, comme Gitlab par exemple)
- un ordinateur par personne

### Installation

Pour installer Git, il y a plusieurs solutions possibles en fonction du système d'exploitation sur lequel vous êtes.

Sous MacOS ou Lunix, vous pouvez passer par un [gestionnaire de paquets](https://fr.wikipedia.org/wiki/Gestionnaire_de_paquets), comme par exemple:
* sous MacOS: [HomeBrew](https://brew.sh/)
* sous Linux: [Apt](https://doc.ubuntu-fr.org/apt) ou [Yum](https://www.linuxtricks.fr/wiki/utilisation-de-yum)

Sous Windows, Git s'installe via un [éxecutable](https://fr.wikipedia.org/wiki/.exe)

#### Ressource
https://gist.github.com/derhuerst/1b15ff4652a867391f03#file-linux-md

### Exercice

La tache de cet exercice est de créer une page HTML de votre choix, par binomes.
L'objectif est d'utiliser les fonctionnalités de Git pour mettre en place cette page HTML, à deux.

Découpez ensemble (assez finement) les parties de la page HTML que vous voudriez faire pour vous partager le travail.

Puis créez conjointement un répertoire distant dont chacun·e aura accès avec les meme droits.

Enfin, travaillez chacun·e sur votre machine.
Vous aurez une branche "master" et une branche de développement par personne.
A chaque ajout de partie, faites un commit commenté. Au bout de deux ou trois commits, mergez votre avancée sur "master" et envoyez la nouvelle version de la branche "master" sur le repertoire distant.

Pour visualiser vos interactions avec Git, n'hésitez pas à utiliser l'outil de visualisation [learn git branching](https://learngitbranching.js.org/)

#### Fonctionnalités à utiliser

- Créer un répertoire distant (avec Github ou assimilé)
- Changer les droits d'accès d'un répertoire sur github
- Cloner un projet sur sa machine
- Commiter avec un message d'explication
- Récupérer les changements effectués sur le répertoire distant
- Merger sur "master" et envoyer sur le répertoire distant

#### Ressources
- Fusion des branches (FR) : https://openclassrooms.com/fr/courses/2342361-gerez-votre-code-avec-git-et-github/2433696-fusionnez-des-branches
- Quelques idées d'utilisation des branches (FR) : https://www.davidlangin.fr/articles/les-bonnes-manieres-de-git
- commit commentaires
- merge ou rebase

### Pour aller plus loin

pull request / lecture de code / commentaires de revue / merge de pull request
Proposition de nouveau code
Changer de répertoire distant

#### Ressources
- Conseils pour une bonne revu de code (FR) : https://blog.nathanaelcherrier.com/fr/conseils-bonne-revue-code/

## Ressources globales
- La documentation de Git (FR) : https://git-scm.com/book/fr/v2
- Guide pour mieux comprendre Git (FR) : http://rogerdudler.github.io/git-guide/index.fr.html
- Guide visuel (EN) : http://marklodato.github.io/visual-git-guide/index-en.html
- Outil visuel d'aide à l'apprentissage de Git (FR) : https://learngitbranching.js.org/
