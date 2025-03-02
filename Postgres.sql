--Creating table Users (drivers)
create table users(
id serial primary key,
fullname varchar(25),
email varchar(50) unique,
phone varchar(20),
license_num varchar(20),
foreign key (license_num) references cars(license_num)
);

--Creating table Cars
create table cars(
id serial primary key,
brand varchar(20),
model varchar(20),
year int,
license_num varchar(20) unique,
status varchar(20),
foreign key (status) references car_status(status) 
);

-- Creating table car_status
create table car_status(
id int primary key,
status varchar(20) unique
);


