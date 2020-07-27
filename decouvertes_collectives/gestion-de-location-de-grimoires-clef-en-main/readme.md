# Le concours de cuisine

## Outils utilisables
Voici une liste d'outils possibles pour réaliser les diagrammes voulus:
- un crayon et du papier
- https://app.diagrams.net/
- Exemple d'outil open source: https://www.umlet.com/

Cette liste n'est pas exhaustive. Nous vous invitons à utiliser l'outil le plus adéquat pour vous.

## Le contexte

Entrainez-vous, avec le sujet proposé, à créer différents diagrammes comme un diagramme de classe ou de séquence, à plusieurs.

## Le sujet

Dans un concours de cuisine, il y a plusieurs participants.
On aimerait une application qui gère notre concours.
Nous avons des ingrédients en quantités limitées, qui peuvent être réapprovisionnés.
Les cuisiniers proposent des recettes composées d'ingrédients.

Les recettes ont un titre, une catégorie (e.g., ”plat”, ”dessert”) et une description optionnelle. Une recette est élaborée pour un nombre de personnes. Chaque recette se découpe en étapes, qui sont numérotées. Chaque recette a au moins une première étape. Une étape comporte des instructions à suivre.
Enfin, chaque étape nécessite un certain nombre d’ustensiles de cuisine, dont on stocke uniquement le nom. On considère que la personne qui cuisine connait le rôle de chaque ustensile.
Chaque recette est proposée par une personne à une date donnée. Une personne se caractérise par un nom, un prénom.

Il reste à décrire les produits et les ingrédients, qui sont utilisés par les recettes. Un ingrédient est
une matière première (e.g., une tomate, un oeuf) tandis qu’un produit est transformé à partir d’au moins deux ingrédients (e.g., une pâte brisée). Un ingrédient possède un nom, une catégorie (e.g., légume, épice) et un lieu et date de provenance. Un produit est décrit par un nom, une catégorie, une date de fabrication, un lieu de fabrication unique, et la quantité de chaque ingrédient qui a servi à sa fabrication. Pour chaque ingrédient et pour chaque produit, on stocke dans la base la quantité disponible (indépendamment d’une unité). Enfin, une recette se compose de produits et/ou ingrédients dans une certaine quantité. Les quantités utilisées pour les recettes sont exprimées dans une unité donnée (e.g., gramme, litre, pièce) ou l’abréviation correspondante (e.g., gr, L).

Pour faciliter le déroulement du concours, les organisateurs ont en amont renseigné la liste des ingrédients existants ainsi que tous les ustensiles proposés : ainsi, les recettes ajoutées pourront toutes être testées, car elles n'utiliseront que des ingrédients, préparations et ustensiles connus des organisateurs.

Une personne du jury a un nom, un prénom et un titre de prestige.
Elle peut noter les recettes et donner un avis écrit.
