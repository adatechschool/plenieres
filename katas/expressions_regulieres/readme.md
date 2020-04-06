# Les expressions régulières

D'après Wikipedia:
> En informatique, une expression régulière (ou expression rationnelle ou expression
> normale ou motif), est une chaîne de caractères, qui décrit, selon une syntaxe précise,
> un ensemble de chaînes de caractères possibles. Les expressions régulières
> sont également appelées regex (un mot-valise formé depuis l'anglais regular expression).

https://fr.wikipedia.org/wiki/Expression_r%C3%A9guli%C3%A8re

## Niveau 1

Ecrire une fonction qui prend deux paramètres de type "Chaine de caractère".
La fonction permet de vérifier, en utilisant une expression régulière, que le premier paramètre contient le second. Elle renvoie donc un booleen.

Exemple en pseudo code:
```
function (parametre1, parametre2)
# si parametre1 = "Je suis un robot"
# si parametre2 = "robot"
# La fonctionr envoie "true"
# si parametre2 = "poulet"
# La fonction renvoie "false"

```

## Niveau 2

Ecrire une fonction qui prend un paramètre de type "Chaine de caractère".
La fonction permet de vérifier, en utilisant une expression régulière, que la chaine de caractères contient des chiffres. Elle renvoie un booleen.

Exemple en pseudo code:
```
function (parametre)
# si parametre = "J'ai 12 pommes"
# La fonctionr envoie "true"
# si parametre = "J'ai beaucoup de pommes"
# La fonction renvoie "false"

```

## Niveau 3

Ecrire une fonction qui prend un paramètre de type "Chaine de caractère".
La fonction permet de vérifier, en utilisant une expression régulière, que la chaine de caractères suit un format bien précis. Elle renvoie un booleen.


Format à suivre:
- le paramètre doit contenir 5 fois la meme chaine de caractères

Exemple en pseudo code:
```
function (parametre)
# si parametre = "SalamècheSalamècheSalamècheSalamècheSalamèche"
# La fonction renvoie "true"
# si parametre = "Salamèche"
# La fonction renvoie "false"
# si parametre = "Salamèche est orange"
#La fonction renvoie "false"

```

## Niveau 4

Ecrire une fonction qui prend un paramètre de type "Chaine de caractère".
La fonction permet de vérifier, en utilisant une expression régulière, que la chaine de caractères suit un format bien précis. Elle renvoie un booleen.

Format à suivre:
- la chaine de caractère doit avoir une taille de 40 caractères
- les 35 premiers caractères doivent etre des lettres (minuscule ou majuscule)
- les 5 derniers caracteres doivent etre des caractères spéciaux ou des espaces

Exemple en pseudo code:
```
function (parametre)
# si parametre = "JesuisUnArbreAvecDesbranchesvertes1! $%&"
# La fonction renvoie "true"
# si parametre = "J'ai beaucoup de pommes"
# La fonction renvoie "false"
# si parametre = "JesuisUnArbreAvecDesbranchesvertes1!$"
#La fonction renvoie "false"

```

## Niveau 5

Ecrire une fonction qui prend deux paramètres de type "Chaine de caractère".
La fonction permet de compter combien de fois un mot est contenu dans une chaine de caractère plus longue.

Format à suivre:
- Le mot à chercher peut etre composé de lettres (majuscules, minuscules), de chiffres et de underscores (`_`).

Exemple en pseudo code:
```
function (parametre1, parametre2)
# si parametre1 = "soleil solEIL soleil_hiver soleil-hiver soleil&hiver (soleil) "
# et paramètre2 = 'soleil'
# La fonction renvoie 4
# Elle compte les éléments suivants:
# - soleil
# - soleil-hiver
# - soleil&hiver
# - soleil

```

## Niveau 6

Ecrire une fonction qui prend un paramètre de type "Chaine de caractère".
La fonction permet de renvoyer, en utilisant une expression régulière, toutes les balises HTML trouvées dans la chaine de caractères. Chaque balise ne doit etre prise en compte qu'une seule fois. Le retour de la fonction doit renvoyer les balises séparées par des virgules.

Exemple en pseudo code:
```
function (parametre)
# si parametre = "<div>Zarbi</div> <a>https://www.pokepedia.fr/Zarbi</a>"
# La fonction renvoie "div,a"

```

## Ressources
- Aide-mémoire des caractères pour chaque expression régulière: https://docs.microsoft.com/fr-fr/dotnet/standard/base-types/regular-expression-language-quick-reference
