DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;

create table pokemons (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  cp INT,
  poke_type VARCHAR,
  img_url VARCHAR
);

CREATE TABLE trainers (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  level VARCHAR,
  img_url VARCHAR
);
