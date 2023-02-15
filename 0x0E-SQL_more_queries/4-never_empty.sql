-- Script that creates the table id_not_null on your MySQL server
-- Columns: id (default: 1), name
-- No failing if exists

CREATE TABLE IF NOT EXISTS id_not_null(
    id INT DEFAULT 1,
    name VARCHAR(256)
);