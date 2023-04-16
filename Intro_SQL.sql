-- USE lab-intro-to-mysql

CREATE DATABASE Dealership_Cars;

USE Dealership_Cars;
CREATE TABLE IF NOT EXISTS Cars (
	ID INT UNIQUE,
    VIN VARCHAR(40) PRIMARY KEY,
    Manufacturer VARCHAR(30) NOT NULL,
    Model VARCHAR(30) NOT NULL,
    Year INT,
    Color Varchar(20)
    );

USE Dealership_Cars;
CREATE TABLE IF NOT EXISTS Customers (
	ID INT UNIQUE,
	Customer_ID VARCHAR(30) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    Email VARCHAR(40) NOT NULL,
    Country VARCHAR(30),
    City VARCHAR(30),
    Zip INT
    );

USE Dealership_Cars;
CREATE TABLE IF NOT EXISTS Salespersons (
	ID INT UNIQUE,
	Staff_id VARCHAR(20) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Store VARCHAR(20) NOT NULL
    );
    
Use Dealership_Cars;
DROP TABLE IF EXISTS Invoices;
CREATE TABLE IF NOT EXISTS Invoices (
	ID INT UNIQUE,
	Invoice_number INT PRIMARY KEY,
    Date DATE NOT NULL,
    Car VARCHAR(40),
    Customer VARCHAR(30),
    Seller VARCHAR(40)
    );

USE Dealership_Cars;
ALTER TABLE Invoices
	ADD FOREIGN KEY (Car)
    REFERENCES Cars(VIN)
    ON DELETE SET NULL;
    
USE Dealership_Cars;
ALTER TABLE Invoices
	ADD FOREIGN KEY (Customer)
    REFERENCES Customers(Customer_ID)
    ON DELETE SET NULL;
    
USE Dealership_Cars;
ALTER TABLE Invoices
	ADD FOREIGN KEY (Seller)
    REFERENCES Salespersons(Staff_id)
    ON DELETE SET NULL;
