-- Creating a database
-- DDL - Data Definition Language
-- creating the shape of our data, where does it live, what does it do for a living  
CREATE DATABASE e_commerce_db;

-- Tell the query tool that I want to use the created database
-- for the following queries
USE e_commerce_db;

-- SQL commands, conventionally are in all CAPS
-- to separate the keywords from the column names and table names
-- creating a table within our database
-- CREATE TABLE table 
CREATE TABLE Customers (
--  column_name type      constraints 
	customer_id INT AUTO_INCREMENT PRIMARY KEY, -- PRIMARY KEY by default is unique and not null so we dont need to add those constraints
    name VARCHAR(255) NOT NULL, -- set constraint of NOT NULL - we need to have data for this column
    email VARCHAR(255) NULL -- setting a null constraint, but this is also the default     
);

-- ORDERS TABLE
CREATE TABLE Orders (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    customer_id INT, -- we dont need the NOT NULL constraint because its a FOREIGN KEY
    FOREIGN KEY(customer_id) REFERENCES Customers(customer_id)
);
--  ALTERing a table to add a new column
--  change the type of a specific column 
--  ALTER TABLE table_name
--  whatever we need to do to alter

-- Adding a phone number column to the Customers Table
ALTER TABLE Customers
ADD phone VARCHAR(15);

-- query my table to see the columns
-- SELECT columns or * for all columns
-- FROM table  
SELECT *
FROM Customers;

-- Modifying a column 
-- changing the type for the column or just something small
-- like modifying the alotted number of characters for a VARCHAR column
-- change the character limit for our email to 320 
ALTER TABLE Customers
MODIFY email VARCHAR(320);
 
 
-- CREATE TABLE UnusedTable(
-- 	name VARCHAR(150),
--     email VARCHAR(150)
-- )

-- DROP TABLE table_name  
-- DROP TABLE UnusedTable 


-- DROP a database
-- DROP DATABASE IckyBadDatabaseThatINoLongerWant  

-- DML - Data Manipulation Language
-- working with the actual data

-- Inserting data into our tables
-- adding data to the customers table
 INSERT INTO Customers (name, email, phone) -- we're not mentioned the customer_id because of the AUTO_INCREMENT -> it automatically creates an id for us
 VALUES ("Obi Wan Kenobi", "oleben@gmail.com", "6308528209");
 
 SELECT *
 FROM Customers;













 