CREATE TABLE animals (
  id BIGSERIAL PRIMARY KEY,
  animal_name VARCHAR(150),
  date_of_birth DATE,
  escape_attempts INT,
  neutered BIT,
  weight_kg DECIMAL
);

CREATE TABLE owners (
  id BIGSERIAL PRIMARY KEY,
  full_name VARCHAR(150),
  age INT
);

CREATE TABLE species (
  id BIGSERIAL PRIMARY KEY,
  species_name VARCHAR(150)
);