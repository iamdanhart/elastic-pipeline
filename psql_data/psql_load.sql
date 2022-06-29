DROP DATABASE IF EXISTS peopledb;

CREATE DATABASE peopledb;

\c peopledb;

CREATE TABLE people (
  id              SERIAL PRIMARY KEY,
  name            VARCHAR(100) NOT NULL,
  age             INTEGER NOT NULL
);

INSERT INTO people(name, age) VALUES 
('Dan', 32),
('Tim', 32);