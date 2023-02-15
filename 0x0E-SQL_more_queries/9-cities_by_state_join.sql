-- Script that lists all cities contained in the database hbtn_0d_usa
-- Each record displays cities.id - cities.name - states.name
-- Ordered by cities.id ASC; Only one SELECT statement

SELECT cities.id, cities.name, states.name
FROM cities, states
WHERE cities.state_id = states.id
ORDER BY cities.id ASC;