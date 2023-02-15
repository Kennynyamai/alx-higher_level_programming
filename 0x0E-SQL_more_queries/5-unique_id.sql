-- Script that creates the table unique_id on your MySQL server
-- Columns: id(default:1, unique), name
-- No failing if exists

CREATE TABLE IF NOT EXISTS unique_id(
    id INT DEFAULT 1 UNIQUE,
    name VARCHAR(256)
);