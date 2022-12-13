CREATE TABLE `clients` (
    `id` INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name` CHAR(20) NOT NULL,
    `address` TEXT
) ENGINE = InnoDB;

-- Modification pour un autre exercice
ALTER TABLE
    `clients`
ADD
    COLUMN `notes` JSON
AFTER
    `address`;

ALTER TABLE
    `clients`
ADD
    COLUMN `scores` JSON
AFTER
    `notes`;

UPDATE
    `clients`
SET
    `notes` = '[
            { "note" : 19, "m" : "a" },
            { "note" : 17, "m" : "b" },
            { "note" : 17, "m" : "f" },
            { "note" : 15, "m" : "e" },
            { "note" : 11, "m" : "d" }
        ]',
    `scores` = '[
            19, 20, 18, 11, 10
        ]';

select
    notes -> '$[*]'
from
    clients;

-- requete spécifique

"""
JSON_TABLE crée une table à partir d'un champ de type JSON
$ désigne le document JSON

JSON_TABLE crée une table SQL sur laquelle on pourra faire une jointure 

"""

SELECT
    ROUND(AVG(`j`.`n`), 2) as `avg`,
    `c`.`name`,
    `c`.`id`
FROM
    `clients` as `c`
    JOIN JSON_TABLE(
        `c`.`scores`,
        '$[*]' columns(
            `n` decimal(8, 2) path '$'
        )
    ) as `j`
GROUP BY
    `c`.`id`;

SELECT
    ROUND(AVG(j.n), 2) as avg_note,
    id, name, address
FROM
    clients as c
    JOIN json_table(
        c.scores,
        '$[*]' columns(
            n decimal(8, 2) path '$'
        )
    ) as j
GROUP BY
    id;

set
    @json = '
[
  {"name":"Laptop", "color":"black", "price":"1000"},
  {"name":"Jeans",  "color":"blue"}
]';

select
    *
from
    json_table(
        @json,
        '$[*]' columns(
            name varchar(10) path '$.name',
            color varchar(10) path '$.color',
            price decimal(8, 2) path '$.price'
        )
    ) as jt;

