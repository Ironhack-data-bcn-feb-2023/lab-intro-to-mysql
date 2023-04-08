USE cars_company;

INSERT INTO cars
VALUES 
	(145336, 'Toyota', 'Hilux', '2023-01-01', 'Grey'),
    (688954, 'Honda', 'Civic', "2022-01-01", 'Light Red'),
    (111897, 'Tesla', 'Tesla 1.3 Speedmaster', "2021-01-01", 'Black'),
    (302564, 'Peugeot', '306', "2023-01-01", 'Grey');
    
INSERT INTO customer
VALUES
	(01, 'Isabella', '+34611607873', 'isa.fuentes@gmail.com', 'Sarmiento 3477', 'Santa Fe', 'Santa Fe', 'Argentina', 3000),
    (901, 'Augusto', '+34698871256', 'augustomues@gmail.com', 'Londres 12', 'Barcelona', 'Catalunya', 'Espana', 08026),
    (928, 'Federico', '+54934251077', 'fede.mues@gmail.com', 'Londres 12', 'Barcelona', 'Catalunya', 'Espana', 08026),
    (346, 'Lautaro', '+54698712258', 'lauti_lxc@gmail.com', 'Ricardo Aldao 938', 'Santa Fe', 'Santa Fe', 'Argentina', 3000),
    (192, 'Marta', '+01368412547', 'martita@gmail.com', 'Ituzaingo 3666', 'Santa Fe', 'Santa Fe', 'Argentina', 3000),
    (53, 'Julian', '+36581258114', 'juliacapa@gmail.com', 'San Martin 345', 'Buenos Aires', 'Capital', 'Argentina', 101);
    
INSERT INTO salesperson
VALUES
	(12, 'Juan Pablo Kirpach', 33),
    (01, 'Augusto Mues', 33),
    (11, 'Santi Miralles', 1),
    (09, 'Mariano Ciarroca', 2),
    (08, 'Florencia Galan', 1),
    (03, 'Carlos Mues', 5);
    
INSERT INTO invoices
VALUES
	(3469, '2023-01-15', 145336, 01, 01),
    (3470, '2023-01-01', 688954, 901, 03),
    (3471, '2023-03-02', 688954, 928, 09),
    (3472, '2023-04-01', 111897, 53, 01);