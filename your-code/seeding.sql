INSERT INTO Cars (ID, VIN, Manufacturer, Model, Year, Color)
VALUES
	(0, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
	(1, "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
	(2, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
	(3, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"),
	(4, "DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray");
    
INSERT INTO Customers (ID, Customer_ID, Name, Phone, Email, Country, City, Zip)
VALUES
	(0, "10001", "Pablo Picasso", "+34 636176382", "-", "Spain", "Madrid", 28045),
	(1, "20001", "Abraham Lincoln", "+1 3059077086", "-", "United States", "Miami", 33130),
	(2, "30001", "Napoléon Bonaparte", "+33 179754000", "-", "FRANCE", "PARIS", 75008);

INSERT INTO Salespersons (ID, Staff_id, Name, Store)
VALUES
	(0, "00001", "Petey Cruiser", "Madrid"),
	(1, "00002", "Anna Sthesia", "Barcelona"),
	(2, "00003", "Paul Molive", "Berlin"),
	(3, "00004", "Gail Forcewind", "Paris"),
	(4, "00005", "Paige Turner", "Miami"),
	(5, "00006", "Bob Frapples", "Mexico City"),
	(6, "00007", "Walter Melon", "Amsterdam"),
	(7, "00008", "Shonda Leer", "São Paulo");
    
INSERT INTO Invoices (ID, Invoice_number, Date, Car, Customer, Seller)
VALUES
	(0, "852399038", "2018-08-22", 0, 1, 3),
	(1, "731166526", "2018-12-31", 3, 0, 5),
	(2, "271135104", "2019-01-22", 2, 2, 7);