-- CREATE DATABASE
DROP DATABASE IF EXISTS car_dealership_company;
CREATE DATABASE IF NOT EXISTS car_dealership_company;
USE car_dealership_company;

-- CREATE TABLES
CREATE TABLE IF NOT EXISTS cars (
	`ID` INT PRIMARY KEY UNIQUE NOT NULL,
	`VIN` VARCHAR(30), 
	`MANUFACTURER` VARCHAR(30),
    `MODEL` VARCHAR(30),
    `YEAR` INT,
    `COLOR` VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS customers (
	`ID` INT PRIMARY KEY UNIQUE NOT NULL,
	`CUSTOMER ID` INT UNIQUE,
    `NAME` VARCHAR(30),
    `PHONE` VARCHAR(20), -- por los prefijos 'p.ej.: +34'
    `EMAIL` VARCHAR(50),
    `ADDRESS` VARCHAR(50),
    `CITY` VARCHAR(30),
    `STATE PROVINCE` VARCHAR(30),
    `COUNTRY` VARCHAR(30),
    `ZIP POSTAL CODE` INT
);

CREATE TABLE IF NOT EXISTS salespersons (
	`ID` INT PRIMARY KEY UNIQUE NOT NULL,
	`STAFF ID` INT UNIQUE,
    `NAME` VARCHAR(30),
    `STORE` VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS invoices (
	`ID` INT PRIMARY KEY UNIQUE NOT NULL,
	`INVOICE NUMBER` INT UNIQUE,
    `DATE` DATE,
    `CAR` INT,
    `CUSTOMER` INT,
    `SALESPERSON` INT
);

ALTER TABLE invoices
	ADD FOREIGN KEY (`CAR`)
		REFERENCES cars(`ID`) ON DELETE SET NULL;
ALTER TABLE invoices
    ADD FOREIGN KEY (`CUSTOMER`)
		REFERENCES customers(`ID`) ON DELETE SET NULL;
ALTER TABLE invoices
    ADD FOREIGN KEY (`SALESPERSON`)
		REFERENCES salespersons(`ID`) ON DELETE SET NULL;