DROP TABLE adoptions;
DROP TABLE owners;
DROP TABLE animals;


CREATE TABLE animals
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  breed VARCHAR(255),
  admission_date DATE,
  adoptable BOOLEAN,
  issues TEXT
);

CREATE TABLE owners
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  address VARCHAR,
  adopted_animal VARCHAR,
  details TEXT,
  animal_id INT8 REFERENCES animals(id)
);


CREATE TABLE adoptions
(
  id SERIAL8 PRIMARY KEY,
  owner_id INT8 REFERENCES owners(id),
  animal_id INT8 REFERENCES animals(id)
);