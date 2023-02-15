-- Script that lists all the cities of California that can be found in the database hbtn_0d_usa
-- states has one record where name = California, id can be different
-- Results ordered by cities.id ASC
-- No using JOIN; No failing if exists

SELECT id, name FROM cities 
WHERE state_id = 
	(SELECT id FROM states
	 WHERE name = 'California')
ORDER BY id ASC;