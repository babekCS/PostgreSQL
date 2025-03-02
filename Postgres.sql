--Creating table Users (drivers)
create table users(
id serial primary key,
fullname varchar(25),
email varchar(50) unique,
phone varchar(20),
licenseNum varchar(20) foreign key references cars(licenseNum)
);

--Creating table Cars
create table cars(
id serial primary key,
brand varchar(20),
model varchar(20),
year int,
licenseNum varchar(20) unique primary key,
status varchar(20) foreign key references car_status(status) 
);



