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
    ranger_id INT REFERENCES rangers(ranger_id),
    species_id INT REFERENCES species(species_id),
    sighting_time TIME,
    location TEXT,
    notes TEXT
);

INSERT INTO rangers (name, region) VALUES
('Alice Green', 'Northern Hills'),
('Bob White', 'River Delta'),
('Carol King', 'Mountain Range');


INSERT INTO species (common_name, scientific_name, discovery_date, conservation_status) VALUES
('Snow Leopard', 'Panthera uncia', '1775-01-01', 'Endangered'),
('Bengal Tiger', 'Panthera tigris tigris', '1758-01-01', 'Endangered'),
('Red Panda', 'Ailurus fulgens', '1825-01-01', 'Vulnerable'),
('Asiatic Elephant', 'Elephas maximus indicus', '1758-01-01', 'Endangered');


INSERT INTO sightings (species_id, ranger_id, location, sighting_time, notes) VALUES
(1, 1, 'Peak Ridge', '07:45:00', 'Camera trap image captured'),
(2, 2, 'Bankwood Area', '16:20:00', 'Juvenile seen'),
(3, 3, 'Bamboo Grove East', '09:10:00', 'Feeding observed'),
(1, 2, 'Snowfall Pass', '18:30:00', NULL);


SELECT * FROM rangers;
SELECT * FROM species;
SELECT * FROM sightings;


-- 1

INSERT INTO rangers (name, region) VALUES
('Derek Fox', 'Coastal Plains');

-- 2
SELECT count(DISTINCT species_id) as unique_species_count FROM sightings;

-- 3
SELECT * FROM sightings
WHERE location LIKE '%Pass'

