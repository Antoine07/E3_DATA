# TP 02 Numpy

* révision
** challenge

## 01 Exercice  slicing *

Soit m le tableau suivant :

1. Affichez les multiples de 3 de la première ligne du tableau m.

2. Affichez la deuxième colonne et faite la somme des nombres pairs de cette colonne.

```python
# Matrice de données aléatoires
m = np.random.randint(1, 5, (10,10))
```

3. Faites la somme des lignes puis des colonnes qui contiennent au moins un 1.

4. Reprenez le tableax m et faite la somme de chaque colonne que vous placerez dans un tuple.

5. Même consigne mais maintenant pour les lignes.

6. Faites la somme des valeurs paires de la matrice.

7. Faites la somme des valeurs paires des colonnes.

8. Calculez la moyenne des valeurs et l'écart type.

9. Créez un nouveau tableau à partir des valeurs paires de la matrice m.

## 02 Exercice doublon **

Dans le tableau suivant éliminer tous les doublons de lettres, voyez le tableau sanitize que nous aimerions avoir une fois votre script exécuté ci-dessous :

```python
a = np.array([
    ["aaabbfffhjik", "hhhkkkiooo", "hhjuuk"],
    ["rrrtttyyuuii", "rroooiiiuuu", "jjjhhhaa"],
    ["aaabbgghhh", "iiikkkooomml", "hhhiijjjuu"],
    ["hhhyyytttuu", "xxxnnnooii", "kkkjjjuuppp"],
    ["qqqfffgghhh", "qqqkkklll", "ooohhhjjj"],
])

# Il faut obtenir ce tableau en sorti
sanitize = np.array([
       ['bfhajik', 'hiko', 'jhuk'],
       ['urity', 'urio', 'jha'],
       ['hgab', 'likmo', 'jhui'],
       ['hyut', 'xino', 'jupk'],
       ['fqhg', 'lqk', 'jho']
])
```

Indications : vous pouvez utiliser les set qui permettent d'obtenir un ensemble de valeurs uniques.

```python

print( set("aaabbfffhjik") )

```

### 03 Exercice température

Nous avons relevé des températures au mois de Janvier. Répondez aux questions suivantes :

1. Donnez toutes les températures qui sont supérieures à 0.

2. Comparez les températures supérieures et inférieures à 0.

3. Donnez le pourcentage des températures positives sur le mois.

4. Créez un tableau days pour les jours du mois et donnez les jours pour lesquels la température était supérieure à 0.

5. Donnez toutes les températures supérieures à 0 à partir du dixième jour du mois.

6. Remplacez maintenant les températures négatives par la moyenne des températures positives.

```python
january = np.array([-2,  5, -5,  6, -2,  0,  6,  2,  8,  0,  6, -1,  3,  3,  7,  0, -5,
        7,  4,  7,  8, -1,  5, -2,  3, -3, -2,  7,  8,  4,  2])
```
