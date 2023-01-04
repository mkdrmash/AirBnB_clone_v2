-- this is a script which prepares a MySQL server for the project
-- Create project development database named : hbnb_dev_db
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
-- create a new user named : hbnb_dev with the privileges on the db hbnb_dev_db
-- with password : hbnb_dev_pwd if it doesn't exist
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';
-- grant all privileges to the new user
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';
FLUSH PRIVILEGES;
-- grant the SELECT privilege for the user hbnb_dev in the db performance_schema
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';
FLUSH PRIVILEGES;
