# Jeu du morpion en Ada

Ce jeu du morpion a été rédigé par Mickael Cappelle et [posté sur le site d'OpenClassRoom](https://openclassrooms.com/forum/sujet/algo-tous-langages-parties-de-morpion-96556)
Il est utilisé chez Ada Tech School comme exemple de lecture de code dans le langage Ada.

## Qu'apporte la lecture de ce code ?

lire ce code permet plusieurs choses:
- découvrir un langage typé
- comprendre les prémices des langages objets
- appréhender les notions de grilles
- Comprendre la différence entre les fonctions et les procédures

## Pour faire tourner ce code

Ada est un langage compilé qui necessite l'utilisation d'un compilateur.
Pour faire tourner ce code, il y aura besoin d'installer le compilateur GNAT GPL: https://www.adacore.com/community

Ensuite, il y a besoin de mettre à jour le path vers ce compilateur installé (puis relancer son terminal).
Exemple sous mac:
```
export PATH=$PATH:/Users/username/opt/GNAT/2019/bin
```

Suite à cela, on peut compiler le code généré en amont:
```
gnatmake morpion.adb
> gcc -c morpion.adb
> gnatbind -x morpion.ali
> gnatlink morpion.ali
```
Gnat est assez cool car il manipule le compilateur GCC et les liens à faire ensuite pour nous directement.

Enfin, on peut lancer notre programme:
```
./morpion
```

Voici un petit tutoriel si besoin d'aide: http://sam.truman.edu/adaonthemac.html

## Tips

Si comme moi vous utilisez Sublime text, vous pouvez utiliser le package control pour installer la [coloration syntaxique](https://www.radford.edu/~nokie/classes/320/compileInstall.html) associée à ce langage.
