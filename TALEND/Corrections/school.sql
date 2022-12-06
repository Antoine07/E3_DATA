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

UPDATE
    `clients`
SET
    `notes` = ('{"note1": 16, "note2": 17, "note3" : 10 }')
WHERE
    `name` = 'Alan';