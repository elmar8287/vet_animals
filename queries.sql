SELECT * from animals WHERE animal_name like '%mon';
SELECT animal_name FROM animals WHERE date_of_birth BETWEEN '2016.01.01' AND '2019.12.31';
SELECT animal_name FROM animals WHERE neutered='1' AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE animal_name='Agumon' OR animal_name='Pikachu';
SELECT animal_name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered='1';
SELECT * FROM animals WHERE animal_name <> 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= '10.4' AND weight_kg <= '17.3';

ALTER TABLE animals
ADD species VARCHAR(250);

BEGIN;
UPDATE animals
SET species='unspecified';
ROLLBACK;

BEGIN;
UPDATE animals
SET species='digimon'
WHERE animal_name like '%mon';
UPDATE animals
SET species='pokemon'
WHERE species='';
COMMIT;

BEGIN;
DELETE FROM animals;
ROLLBACK;