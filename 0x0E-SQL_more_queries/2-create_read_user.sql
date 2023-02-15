-- Script that creates the database hbtn_0d_2 and the user user_0d_2
-- No failing if database and user exist
-- Password = user_0d_2_pwd; Select privileges

-- Create Database
CREATE DATABASE IF NOT EXISTS hbtn_0d_2;

-- Create User
CREATE USER IF NOT EXISTS user_0d_2@localhost
IDENTIFIED BY 'user_0d_2_pwd';

-- Privileges
GRANT SELECT
ON hbtn_0d_2.*
TO user_0d_2@localhost;