DROP DATABASE IF EXISTS cars_company;
CREATE DATABASE IF NOT EXISTS cars_company;

USE cars_company;

DROP TABLE IF EXISTS cars;
CREATE TABLE IF NOT EXISTS cars (
	vin INT PRIMARY KEY,
    manufacturer VARCHAR(30),
    model VARCHAR(30),
    year DATE,
    color VARCHAR(10)
);

DROP TABLE IF EXISTS customer;
CREATE TABLE IF NOT EXISTS customer (
	customer_id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    phone_no VARCHAR(20),
    email VARCHAR(30),
    address VARCHAR(30),
    city VARCHAR(30),
    state VARCHAR(30),
    country VARCHAR(20),
    zip_code INT
);

DROP TABLE IF EXISTS salesperson;
CREATE TABLE IF NOT EXISTS salesperson (
	staff_id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    store_id INT
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE IF NOT EXISTS invoices (
	invoice_id INT PRIMARY KEY,
    date DATE,
    car INT,
    customer INT,
    salesperson INT,
    FOREIGN KEY (car) REFERENCES cars(vin),
    FOREIGN KEY (customer) REFERENCES customer(customer_id),
    FOREIGN KEY (salesperson) REFERENCES salesperson(staff_id)
);