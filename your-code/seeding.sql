
USE cars;
-- INSERT VALUES IN THE TABLE
INSERT INTO cars VALUES (0,'3K096I98581DHSNUP','Volkswagen',	'Tiguan', 2019, 'Blue');
INSERT INTO cars VALUES ROW(1,'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'), ROW(2,'RKXVNNIHLVVZOUB4M','Ford', 'Fusion', 2018, 'White'), ROW(3,'HKNDGS7CU31E9Z7JW','Toyota', 'RAV4', 2018, 'Silver'), ROW(4,'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'), ROW(5,'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers VALUES ROW(1,'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045), ROW(2,'Abraham Lincoln','+1 305 907 7086', '-', '120 SW 8th St', 'Miami','Florida', 'United States',33130), ROW(3,'Napoléon Bonaparte','+33 1 79 75 40 00', '-', '	40 Rue du Colisée', 'Paris','Île-de-France','France',75008);

INSERT INTO salesperson VALUES ROW(1,'Petey Cruiser', 'Madrid'), ROW(2,'Anna Sthesia','Barcelona'), ROW(3,'Paul Molive','Berlin'), ROW(4, 'Gail Forcewind','Paris'), ROW(5,'Paig Turner', 'Mimia'), ROW(6, 'Bob Frapples', 'Mexico City');

INSERT INTO invoices VALUES ROW(852741,1,1,0), ROW(859639,2,3,1), ROW(789456,4,2,2), ROW(485294,3,1,2), ROW(963852,6,3,3), ROW(852941, 5,2,4);


