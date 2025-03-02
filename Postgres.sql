create table users(
id serial primary key,
fullname varchar(25),
email varchar(50) unique,
phone varchar(20),
licenseNum varchar(20) unique
);