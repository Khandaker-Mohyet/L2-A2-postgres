-- Active: 1747418280166@@localhost@5432@conservation_db
CREATE DATABASE conservation_db;

CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    region TEXT
);

CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    common_name TEXT NOT NULL,
    scientific_name TEXT,
    discovery_date DATE,
    conservation_status TEXT
);

CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY,
    FOREIGN KEY (ranger_id) REFERENCES rangers(ranger_id),
    FOREIGN KEY (species_id) REFERENCES species(species_id),
    sighting_time TIME,
    location TEXT,
    notes TEXT,
);

