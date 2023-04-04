DROP DATABASE IF EXISTS cars;
CREATE DATABASE IF NOT EXISTS cars;

USE cars;
CREATE TABLE IF NOT EXISTS cars (     -- manufacturer, model, year, and color of the cars in your company's inventory.
	car_id INT PRIMARY KEY,
    vehicle_id_no VARCHAR(17) NOT NULL,
    manufacturer VARCHAR(20),
    model VARCHAR(20),
    year INT(4),
    color VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS customers (     -- customer ID, name, phone number, email, address, city, state/province, country, and zip/postal code of the customers
	customer_id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    phone_no VARCHAR(20) NOT NULL,
    email VARCHAR(30),
    address VARCHAR(40),
    city VARCHAR(20),
    post_code INT(10),
    country VARCHAR(3)
);
    
CREATE TABLE IF NOT EXISTS staff (     -- staff ID, name, tax_id, and the store at your company, phone_no, role
	staff_id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    tax_id INT UNIQUE,
	store INT,
    phone_no VARCHAR(20),
    role VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS stores (     -- store ID, address, city, phone number, manager
	store_id INT PRIMARY KEY,
    address VARCHAR(30),
    city VARCHAR(20) NOT NULL,
    phone_no_store VARCHAR(20),
	manager INT -- FK
);

CREATE TABLE IF NOT EXISTS invoices (     -- invoice number, date, car, customer, and salesperson related to each car sale
	invoice_no INT PRIMARY KEY,
    date DATE,
	car INT, -- FK
    customer INT, -- FK
    staff INT -- FK
);

ALTER TABLE invoices
	ADD FOREIGN KEY (car) -- invoices.car
    REFERENCES cars(car_id) -- cars.car_id
    ON DELETE CASCADE;
    
ALTER TABLE invoices
	ADD FOREIGN KEY (customer) -- invoices.customer
    REFERENCES customers(customer_id) -- customers.customer_id
    ON DELETE CASCADE;
    
ALTER TABLE invoices
	ADD FOREIGN KEY (staff) -- invoices.staff
    REFERENCES staff(staff_id) -- staff.staff_id
    ON DELETE CASCADE;
    
ALTER TABLE stores
	ADD FOREIGN KEY (manager) -- stores.manager
    REFERENCES staff(staff_id) -- staff.staff_id
    ON DELETE CASCADE;
    
ALTER TABLE staff
	ADD FOREIGN KEY (store) -- staff.store
    REFERENCES stores(store_id) -- stores.store_id
    ON DELETE CASCADE;