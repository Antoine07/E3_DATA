# ETL Talend

Talend est un véritable outils comportant un grand nombre de fonctionnalités configurables pour extraire, formater et enregistrer les données. E. T. L. Extract // Transformed // Load  

## Installation

Pour installer Talend il faut installer la SDK Java. Puis installez à partir du site Talend le logiciel.

## 01 Exercice Job et Métadonnées

Créez une métadonnées Fichier Excel à partir du fichier Client.xls. Puis créez une métadonnées de type Client MySQL. 

1. Créez un fichier métadonnées (un schéma), voir le plan de ce shéma ci-dessous, et créez un job qui permet de voir les données que l'on aura extrait tLogRow objet Talend qui permet de voir les données s'afficher.

2. Mappez les données pour les préparer (input/output), avant de les afficher avec le tLogRow.

3. Une fois les données mappées et affichées (pour contrôle tLogRow), enregistrez ces données dans la table clients de la bd school (tDBOutput), qui correspond au format des données du fichier Excel, propagation du schéma.

4. Enregistrez maintenant les données dans un fichier tFileJson (le schéma sera propagé, ce n'est pas la peine de s'en soucier en sortie).

Maintenant, vous allez créer un Job permettant d'extraire les données du fichier xls vers (création) un fichier JSON et une table d'une base de données.

- Créez un fichier dans votre espace de travail et une base de données dans MySQL school et une table clients avec les champs suivants :

```txt
id PK
name string
address text
```

Chaque Job est constitué d'élément qui permettent la formatage des données qui seront intégrées dans un flux pour être finalement enregistrer dans d'autre structure de données structurées ou semi-structurées.

Voici le schéma du premier Job que nous allons créer.

[sql](./images/job_sql_json_xls.png)


## 02 Exercice Fichier CSV vers un fichier JSON

Créez un tFileInputDelimiter dans les métadonnées (fichier de type csv) pour définir les données à importer dans le Job qui va nous permettre de transformer le fichier CSV en un fichier JSON (tFileOutputJSON)

Définissez dans les métadonnées ce fichier de type délimiteur (métadonnées) puis créez les éléments dans un nouveau Job à partir de ces métadonnées pour répondre à la question posée.

## 03 Exercice Fichier SQL vers une sortie log puis vers un nouvelle table

Créez un champ **notes** JSON dans la table clients et ajoutez les notes suivantes à l'aide du code suivant (dans cet exemple les étudiants ont la même note).

```sql
UPDATE
    `clients`
SET
    `notes` = ('{"note1": 16, "note2": 17, "note3" : 10 }')
```

1. Mettre à jour les données

2. Mapper correctement les données pour calculer la moyenne et insérer cette moyenne dans la nouvelle table.

Indication avant de faire l'enregistrement pensez à faire des tLogRow pour voir les données.