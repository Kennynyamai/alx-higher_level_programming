-- Script that creates the MySQL server user user_0d_1
-- No failing if user exists
-- Has all privileges; Password = user_0d_1_pwd

CREATE USER IF NOT EXISTS user_0d_1@localhost
IDENTIFIED BY 'user_0d_1_pwd';
GRANT ALL
ON *.*
TO user_0d_1@localhost