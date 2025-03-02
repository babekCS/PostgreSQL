--Creating table Users (drivers)
create table users(
fin_code varchar(10) primary key,
fullname varchar(25),
email varchar(50) unique,
phone varchar(20),
license_num varchar(20),
foreign key (license_num) references cars(license_num)
);

--Creating table Cars
create table cars(
license_num varchar(20) unique primary key,
brand varchar(20),
model varchar(20),
year int,
status varchar(20)
);

drop table cars;


-- Inserting data to our tables
insert into cars(brand, model, year, license_num, status) values('BMW', 'M5CS', 2025, '10ba001','owned');
insert into cars(brand, model, year, license_num, status) values('Mercedes-Benz', 'CLS63', 2023, '99ur444','rented');
insert into cars(brand, model, year, license_num, status) values('Toyota', 'Carolla', 2014, '99vs485','owned');
insert into cars(brand, model, year, license_num, status) values('Hyundai', 'Elantra', 2016, '10br159','rented');

select *from cars;
