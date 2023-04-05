CREATE DATABASE lab_mysql4;
use lab_mysql4;


create table cars(idcar int not null,
manufacture varchar(30) not null,
modelo date  not null,
color varchar(30) not null,
PRIMARY KEY(idcar));



create table Salesperson(idstaff int not null,
Nombre VARCHAR(30) not null,
Storelocation VARCHAR(30) not null ,
carsold int not null,
PRIMARY KEY(idstaff),
foreign key (carsold) references cars(idcar));

create table customer(customerid int not null,
nombre varchar(45),
phone varchar(45),
email varchar(45),
citystore varchar(45),
vehicleid int not null,
primary key(customerid),
foreign key (vehicleid) references cars(idcar));

create table invoices(invoicenumber int not null,
carid int not null,
customerid int not null,
employeeid int not null,
saledate date not null,
primary key(invoicenumber),
foreign key(carid) references cars(idcar),
foreign key(customerid) references customer(customerid),
foreign key(employeeid) references Salesperson(idstaff));

desc cars;
insert into cars(idcar, manufacture, modelo, color)
values (123, 'Volkswagen', '2019-11-10', 'blue');
insert into cars(idcar, manufacture, modelo, color)
values (456, 'peaugeot', '2020-11-10', 'red');
insert into cars(idcar, manufacture, modelo, color)
values (789, 'toyota', '2018-11-10', 'white');
insert into cars(idcar, manufacture, modelo, color)
values (012, 'volvo', '2022-11-10', 'grey');
insert into cars(idcar, manufacture, modelo, color)
values (013, 'volvo1', '2022-11-10', 'grey');

insert into customer(customerid, nombre, phone, email, citystore, vehicleid)
values (001, 'daniel', '12345789', 'a@gmail.com', 'madrid', '123');
insert into customer(customerid, nombre, phone, email, citystore, vehicleid)
values (002, 'felipe', '234567890', 'b@gmail.com', 'bcn', '456');
insert into customer(customerid, nombre, phone, email, citystore, vehicleid)
values (003, 'pedro', '345678901', '-', 'zar', '789');
insert into customer(customerid, nombre, phone, email, citystore, vehicleid)
values (004, 'rocio', '456789012', '-', 'bilbao', '012');

insert into salesperson(idstaff, Nombre, Storelocation, carsold)
values (246, 'alfa', 'madrid', '123');
insert into salesperson(idstaff, Nombre, Storelocation, carsold)
values (802, 'beta', 'bcn', '456');
insert into salesperson(idstaff, Nombre, Storelocation, carsold)
values (468, 'zero', 'zar', '789');

insert into invoices(invoicenumber, carid, customerid, employeeid, saledate)
values (852399038, '123', '001', '246', '2019-11-10');
insert into invoices(invoicenumber, carid, customerid, employeeid, saledate)
values (731166526, '456', '002', '802', '2020-11-10');
insert into invoices(invoicenumber, carid, customerid, employeeid, saledate)
values (271135104, '789', '003', '468', '2018-11-10');

SELECT *
FROM salesperson;

update salesperson
set Storelocation= 'caceres'
where idstaff=246;

update customer
set email='c@gmail.com'
where customerid=003;

delete from cars
where idcar=013