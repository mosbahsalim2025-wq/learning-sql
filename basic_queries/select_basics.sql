-- SQLZoo Tutorial 0: SELECT basics
-- Core syntax for selecting columns, filtering rows, and range checking

-- 1. Introducing the world table of countries
-- Modifying the query to show the population of Germany
SELECT population 
FROM world
WHERE name = 'Germany';

-- 2. Scandinavia
-- Using the IN operator to check if an item matches a specific list
SELECT name, population 
FROM world
WHERE name IN ('Sweden', 'Norway', 'Denmark');

-- 3. Just the right size
-- Using BETWEEN to filter rows within an inclusive numerical range
SELECT name, area 
FROM world
WHERE area BETWEEN 200000 AND 250000;

-- =========================================================================
-- SELECT basics Quiz Solutions
-- Reference queries confirming mastery of filtering and logical operators
-- =========================================================================

-- Quiz Q1: Filtering by population range
SELECT name, population 
FROM world 
WHERE population BETWEEN 1000000 AND 1250000;

-- Quiz Q3: Countries ending in 'a' or 'l' using wildcards
SELECT name 
FROM world 
WHERE name LIKE '%a' OR name LIKE '%l';

-- Quiz Q6: Compound logic filtering for large area and low population
SELECT name, area, population  
FROM world 
WHERE area > 50000 AND population < 10000000;

-- Quiz Q7: Calculating population density for specific countries
SELECT name, population/area  
FROM world 
WHERE name IN ('China', 'Nigeria', 'France', 'Australia');
