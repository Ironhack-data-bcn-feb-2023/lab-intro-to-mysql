INSERT INTO cars 
VALUES 
('3K096I98581DHSNUP', "Volkswagen", "Tiguan", 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', "Peugeot", "Rifter", 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', "Ford", "Fusion", 2018, 'White'),
('HKNDGS7CU31E9Z7JW', "Toyota", "RAV4", 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', "Volvo", "V60", 2019, 'Gray'),
('DAM41UDN3CHU2WVF8', "Volvo", "V60 Cross Country", 2019, 'Gray');
-- Last VIN from Lab had to be modified since it was identical to previous (last digit was replaced)


INSERT INTO customers
VALUES 
(10001, "Pablo Picasso", '+34636176382', "-",'Paseo de la Chopera, 14', 'Madrid','Madrid','SPA', 28045),
(20001, "Abraham Lincoln", '+13059077086', "-", '120 SW 8th St', 'Miami', 'Florida', 'USA', 33130),
(30001, "Napoléon Bonaparte", '+33179754000', "-", '40 Rue du Colisée', 'Paris', 'Île-de-France', 'FRA', 75008);


INSERT INTO salesperson
VALUES 
(00001, "Petey Cruiser", '1', "Madrid",'SPA'),
(00002, "Anna Sthesia", '2', "Barcelona", 'USA'),
(00003, "Paul Molive", '3','Berlin','GER'),
(00004, "Gail Forcewind", '4', 'Paris', 'FRA'),
(00005, "Paige Turner", '5', 'Miami','USA'),
(00006, "Bob Frapples", '6', 'Mexico City', 'MEX'),
(00007, "Walter Melon", '7', 'Amsterdam', 'HOL'),
(00008, "Shonda Leer", '8','São Paulo', 'BRA');

INSERT INTO invoices
VALUES 
(852399038, '2018-08-22', '3K096I98581DHSNUP', 20001, 00004),
(731166526, '2018-12-31', 'HKNDGS7CU31E9Z7JW', 10001, 00006),
(271135104, '2019-01-22', 'RKXVNNIHLVVZOUB4M', 30001, 00008);