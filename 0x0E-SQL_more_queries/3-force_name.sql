-- Script that creates the table force_name on your MySQL server
-- Columns: id, name(Not Null)
-- No failing if exists

CREATE TABLE IF NOT EXISTS force_name(
    id INT,
    name VARCHAR(256) NOT NULL
);