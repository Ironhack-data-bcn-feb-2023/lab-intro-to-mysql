CREATE DATABASE IF NOT EXISTS cars;
USE cars;
-- Creation of tables 
CREATE TABLE IF NOT EXISTS cars (id_cars INT PRIMARY KEY, vin VARCHAR(40), manufacturer VARCHAR (20) NOT NULL, model VARCHAR (20) NOT NULL, year INT NOT NULL, color VARCHAR (10) NOT NULL); 
CREATE TABLE IF NOT EXISTS customers (id_customers INT PRIMARY KEY, name VARCHAR (40) NOT NULL, phone VARCHAR (20) NOT NULL, email VARCHAR(40), address VARCHAR (40), city VARCHAR (15) NOT NULL, 
	state VARCHAR (20), country VARCHAR (20), postal_code INT NOT NULL); 
CREATE TABLE IF NOT EXISTS salesperson (id_salesperson INT PRIMARY KEY, name VARCHAR (40) NOT NULL, store VARCHAR(45)); 
CREATE TABLE IF NOT EXISTS invoices (id_invoices INT PRIMARY KEY, salesperson INT, customers INT, cars INT); 
-- SET FOREIGN KEYS 
ALTER TABLE invoices
	ADD FOREIGN KEY (salesperson)
REFERENCES salesperson (id_salesperson)
ON DELETE SET NULL;

ALTER TABLE invoices
	ADD FOREIGN KEY (customers)
REFERENCES customers (id_customers)
ON DELETE SET NULL;

ALTER TABLE invoices
	ADD FOREIGN KEY (cars)
REFERENCES cars (id_cars)
ON DELETE SET NULL;

