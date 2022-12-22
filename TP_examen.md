# Examen ETL

Cet examen se fera par équipe de 2.

Vous devez rendre dans un fichier le code de vos scripts en Python, ainsi qu'un doc avec les images de vos graphiques (Jobs dans talend) et graphiques dans la partie dataviz.

Pour la deuxième partie vous pouvez rendre également à la place un fichier Notebook.

Idéalement vous pouvez rendre votre travail sur un dépôt Git.

## Première partie

1. Création d'un job.

Voici des jeux de données, populations et centers.

Créez un job qui permet d'agréger les données suivantes dans une table populations dans la base de données city.

La table populations dans la base de données aura un champ center qui permettra de renseigner pour chaque user ses centres d'intérêts.

```python

populations = [
    { "id" : 0, "name" : "Alan" },
    { "id" : 1, "name" : "Albert" },
    { "id" : 2, "name" : "Jhon" },
    { "id" : 3, "name" : "Brice" },
    { "id" : 4, "name" : "Alexendra" },
    { "id" : 5, "name" : "Brad" },
    { "id" : 6, "name" : "Carl" },
    { "id" : 7, "name" : "Dallas" },
    { "id" : 8, "name" : "Dennis" },
    { "id" : 9, "name" : "Edgar" },
    { "id" : 10, "name" : "Erika" },
    { "id" : 11, "name" : "Isaac" },
    { "id" : 13, "name" : "Brice" },
    { "id" : 14, "name" : "Alice" },
    { "id" : 15, "name" : "Sophia" },
    { "id" : 16, "name" : "Rasmus" },
    { "id" : 18, "name" : "Taylor" },
    { "id" : 19, "name" : "Olivia" },
    { "id" : 20, "name" : "Jessica" },
    { "id" : 21, "name" : "Anna" },
    { "id" : 22, "name" : "Samantha" },
    { "id" : 23, "name" : "Grace" },
    { "id" : 24, "name" : "Anna" },
    { "id" : 25, "name" : "Alexis" },
    { "id" : 26, "name" : "Madison" },
    { "id" : 27, "name" : "Nicole" },
    { "id" : 28, "name" : "Amanda" },
    { "id" : 29, "name" : "Haley" }  
]

centers = [
    (0, 'PHP'), (0, 'MySQL'), (0, 'Angular'), (1, 'MySQL'), (2, 'Python'), (3, 'PHP'), (4, 'PHP'), 
    (5, 'Angular'), (6, 'Vuejs'), (7, 'Angular'), (8, 'Big data'), (9, 'PHP'), 
    (10, 'Angular'), (10, 'NoSQL'), (11, 'NoSQL'), (12, 'Angular'), (13, 'Angular'), (14, 'Angular'), 
    (15, 'Angular'), (16, 'Angular'), (17, 'PHP'), (18, 'PHP'), (19, 'PHP'), (19,'Angular'), (19, 'Python'),
    (20, 'Python'), (21, 'Python'), (22, 'Python'), (23, 'Python'), (24, 'PHP'), 
    (25, 'NoSQL'), (26, 'NoSQL'), (27, 'Big data'), (28, 'NoSQL'), (29, 'Angular'), (29, 'PHP'), (29,'Big data')
]

```

## Deuxième partie Dataviz

En utilisant le dataset du titanic 

Créez des diagrammes en fonction des questions posées ci-dessous.

1. Quelles est le pourcentage de personnes qui ont survécu.

2. En fonction de l'âge comment se répartisse les survivants et non survivants en fonction de :
    2.1 de la classe
    2.2 du sex
    2.3 du sex et de la classe.

3. Dans le dataset des iris utilisez un diagramme en moustache pour mettre en évidence leurs dispersions en fonction de la largeur, puis de la longueur des sépales. Et enfin même chose pour les pétales.

## Troisième partie QCM

1. Définissez E.T.L. en quelques lignes (3 max)

2. Définissez les types de variables suivantes:

- Les variables quantitatives discrètes.
- Les variables quantitatives continues.

3. Qu'appelle-t-on les variables Qualitative ? Donnez tous les types de variable qualitative, en donnant des exemples.