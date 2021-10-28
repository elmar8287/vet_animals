CREATE TABLE animals (
  id BIGSERIAL PRIMARY KEY,
  animal_name VARCHAR(150),
  date_of_birth DATE,
  escape_attempts INT,
  neutered BIT,
  weight_kg DECIMAL
);

CREATE TABLE owners (
  owners_id BIGSERIAL PRIMARY KEY,
  full_name VARCHAR(150),
  age INT
);

CREATE TABLE species (
  species_id BIGSERIAL PRIMARY KEY,
  species_name VARCHAR(150)
);

ALTER TABLE animals
DROP COLUMN species;
ALTER TABLE animals
ADD species_id INT,
CONSTRAINT fk_species
  FOREIGN KEY(species_id) 
	  REFERENCES species(species_id);
ALTER TABLE animals
ADD owner_id INT,
CONSTRAINT fk_owners
  FOREIGN KEY(owners_id) 
	  REFERENCES owners(owners_id);