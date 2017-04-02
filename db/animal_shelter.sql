DROP TABLE adoptions;
DROP TABLE owners;
DROP TABLE animals;


CREATE TABLE animals
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  species VARCHAR(255),
  admission_date DATE,
  bio TEXT,
  adoptable BOOLEAN
);

CREATE TABLE owners
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  address VARCHAR,
  email VARCHAR,
  details TEXT,
  animal_id INT8 REFERENCES animals(id)
);


CREATE TABLE adoptions
(
  id SERIAL8 PRIMARY KEY,
  owner_id INT8 REFERENCES owners(id),
  animal_id INT8 REFERENCES animals(id)
);