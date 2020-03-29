# L'accessibilité des bases de données

## Objectifs pédagogiques
- Comprendre les différentes manières de manipuler une base de données relationnelle

## Questions à se poser

- Pourquoi a t-on besoin d'une base de données ?
- Existe t-il différents formats de stockage de données ?

## L'application

Cette petite application permet de lister le nom de pokémons, leur identifiant dans le pokédex et leurs catégories.

Elle est développée en `ruby`, avec le framework `RubyOnRails`.
La base de données est au format `sqlite`.

Pour lancer l'application, il faut d'abord avoir installé ruby sur sa machine.
Puis, il faut récupérer l'application en local, installer les dépendances en lançant `bundle install` et utiliser: `rails server` dans le dossier de l'application.

## Manipulation de la base de données

Pour manipuler la base de données, plusieurs solutions sont possibles:
- utiliser une application en ligne, comme https://sqliteonline.com/
- utiliser une application à installer, comme https://sqlitebrowser.org/
- ouvrir la console `sqlite` dans un terminal, en étant dans le dossier de l'application: `sqlite3 db/development.sqlite3`

Avec l'un de ces outils, nous allons essayer en `sql`:
- de voir la structure de la base de données (ses tables)
- de voir la structure d'une table en particulier (`Pokemon`)
- de lister tous les pokémons de la base de données
- de lister les catégories liées au pokémon `Bulbizare`

## Utilisation du framework RubyOnRails

Maintenant, ouvrons la console rails: `rails console`

Ici, le but est de refaire les mêmes actions qu'avec `sql`:
- voir la structure d'une table en particulier (`Pokemon`)
- lister tous les pokémons de la base de données
- lister les catégories liées au pokémon `Bulbizare`

Par quoi pourrions nous passer pour manipuler les données sans `sql` directement ?

A votre avis, comment marche RubyOnRails pour permettre de manipuler les données de la base de données ?

## Aller regarder le code

- https://github.com/rails/rails/blob/2562d133702787553ce9305e8e0765369fdeea22/guides/source/active_record_querying.md

- sqlite adapter : https://github.com/rails/rails/blob/157920aead96865e3135f496c09ace607d5620dc/activerecord/lib/active_record/connection_adapters/sqlite3_adapter.rb

- https://github.com/rails/rails/blob/6a1759a0857d8172b1bd088148eb1cb435df7929/activerecord/lib/active_record/relation/query_methods.rb



