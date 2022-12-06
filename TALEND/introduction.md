# ETL Talend

Talend est un véritable outils comportant un grand nombre de fonctionnalités configurables pour extraire, formater et enregistrer les données. E. T. L. Extract // Transformed // Load  

## Installation

Pour installer Talend il faut installer la SDK Java. Puis installez à partir du site Talend le logiciel.

## Job et Métadonnées

Créez une métadonnées Fichier Excel à partir du fichier Client.xls. Puis créez une métadonnées de type Client MySQL. 

1. Créez un fichier métadonnées (un schéma), voir le plan de ce shéma ci-dessous, et créez un job qui permet de voir les données que l'on aura extrait tLogRow objet Talend qui permet de voir les données s'afficher.

2. Mappez les données pour les préparer, avant de les afficher avec le Log.

3. Une fois les données mappées et affichées (pour contrôle), enregistrez ces données dans la table clients qui correspond au format des données du fichier Excel, propagation du schéma

Maintenant vous allez créer un Job permettant d'extraire les données du fichier xls vers (création) un fichier JSON et une table d'une base de données.

- Créez un fichier dans votre espace de travail et une base de données dans MySQL school et une table clients avec les champs suivants :

```txt
id PK
name string
address text
```

Chaque Job est constitué d'élément qui permettent la formatage des données qui seront intégrées dans un flux pour être finalement enregistrer dans d'autre structure de données structurées ou semi-structurées.

Voici le schéma du premier Job que nous allons créer.

[sql](./images/job_sql_json_xls.png)


## Fichier CSV vers un fichier JSON

Créez un tFileInputDelimiter pour définir les données à importer dans le Job qui va nous permettre de transformer le fichier CSV en un fichier JSON (tFileOutputJSON)

Définissez dans les métadonnées ce fichier de type délimiteur (métadonnées) puis créez les éléments dans un nouveau Job à partir de ces métadonnées pour répondre à la question posée.

## Fichier SQL vers une sortie log puis vers un nouvelle table