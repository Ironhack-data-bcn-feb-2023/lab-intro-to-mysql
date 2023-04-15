DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;

USE lab_mysql;
DROP TABLE IF EXISTS cars;
CREATE TABLE IF NOT EXISTS cars (
	vin VARCHAR(17) PRIMARY KEY,
	manufacturer VARCHAR(40) NOT NULL,
	model VARCHAR(20) NOT NULL,
    year INT(4),
    color VARCHAR(20)
);

USE lab_mysql;
CREATE TABLE IF NOT EXISTS customers (
	customer_id INT PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	phone VARCHAR (12),
    email VARCHAR(40),
    address VARCHAR(40),
    city VARCHAR(40),
    state_province VARCHAR(40),
    country VARCHAR(3),
    zip_code INT (5)
);

USE lab_mysql;
CREATE TABLE IF NOT EXISTS salesperson (
	staff_id INT PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	store INT (10),
    store_state VARCHAR(40),
    store_country VARCHAR(3)
);

USE lab_mysql;
DROP TABLE IF EXISTS invoices;
CREATE TABLE IF NOT EXISTS invoices (
	invoice_no INT PRIMARY KEY,
	invoice_date DATE,
	car_invoiced VARCHAR(17),
    customer INT,
    salesperson INT
);

-- CREATING FK REFERENCES FOR INVOICE TABLE COLUMNS

ALTER TABLE invoices
	ADD FOREIGN KEY (car_invoiced)
    REFERENCES cars(vin)
    ON DELETE CASCADE;
    
ALTER TABLE invoices
	ADD FOREIGN KEY (customer)
    REFERENCES customers(customer_id)
    ON DELETE CASCADE;
    
ALTER TABLE invoices
	ADD FOREIGN KEY (salesperson)
    REFERENCES salesperson(staff_id)
    ON DELETE CASCADE;