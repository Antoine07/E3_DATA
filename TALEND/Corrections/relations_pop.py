"""
un fichier json
un fichier csv

"""

import json
import csv

url = '../Data/populations.json'

# gère les exceptions et ça ouvre et ferme si tout se passe bien
with open(url, 'r') as f:
    populations = json.load(f)
    # print(populations) # un dictionnaire

url = '../Data/relationships.csv'

# On extrait et formatage des données
relationships = []
with open(url, 'r') as f:
    c = csv.reader(f)
    # next(c)
    # enumerate permet de créer un compteur sur l'élément itéré
    for i, v in enumerate(c):
        print(i, v)
        if i == 0:
            continue
        # ajouter un élément dans la liste
        # j'ajoute les éléments sous forme de tuple (a, b)
        relationships.append((int(v[0]), int(v[1])))

    # print(relationships)

# Ajouter une clé relation à chaque dictionnaire se trouvant dans la liste populations
for pop in populations:
    pop['relation'] = []

# print(populations)

for i, j in relationships:
    populations[i]['relation'].append(j)
    populations[j]['relation'].append(i)

# print(populations)

url = '../Data/populations.json'
with open(url, 'w') as f :
    json.dump(populations, f)
