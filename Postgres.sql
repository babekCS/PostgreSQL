--Creating table Users (drivers)
create table users(
id serial primary key,
fin_code varchar(10) unique not null,
fullname varchar(25) not null,
email varchar(50) unique not null,
phone varchar(20) unique not null
);


--Creating table Cars
create table cars(
license_num varchar(20) primary key,
brand varchar(20) not null,
model varchar(20) not null,
year int check (year>1900 and year<=extract(year from current_date)),
status varchar(20) check (status in ('owned', 'rented'))
);

-- Creating table details
create table user_cars(
user_id int,
license_num varchar(20),
primary key (user_id, license_num),
foreign key (user_id) references users(id) on delete cascade,
foreign key (license_num) references cars(license_num) on delete cascade
);


-- Inserting data to users table
insert into users (fin_code, fullname, email, phone) values ('77ar7ar', 'Babek Aliyev', 'baliyev18013@ada.edu.az', '0104442111');
insert into users (fin_code, fullname, email, phone) values ('11ra1ar', 'Hikmet Samedov', 'hsamedov14589@ada.edu.az', '0558378375');
insert into users (fin_code, fullname, email, phone) values ('bah47f3', 'Hazi Aslanov', 'haslanov11432@ada.edu.az', '0512534857');
insert into users (fin_code, fullname, email, phone) values ('43gyr8h', 'Orxan Aliyev', 'oaliyev18145@ada.edu.az', '0553737506');

-- Inserting data to cars table
insert into cars (license_num, brand, model, year, status) values ('10ba444', 'bmw', 'm5cs', 2020, 'owned');
insert into cars (license_num, brand, model, year, status) values ('10ab211', 'mercedes-benz', 'cls', 2016, 'owned');
insert into cars (license_num, brand, model, year, status) values ('90oa475', 'hyundai', 'sonata', 2022, 'owned');
insert into cars (license_num, brand, model, year, status) values ('48yu253', 'toyota', 'corolla', 2020, 'rented');
insert into cars (license_num, brand, model, year, status) values ('11tt111', 'land rover', 'range rover', 2020, 'owned');


-- Inserting data to users_cars table
insert into user_cars (user_id, license_num) values (1, '10ba444');
insert into user_cars (user_id, license_num) values (1, '10ab211');
insert into user_cars (user_id, license_num) values (2, '48yu253');
insert into user_cars (user_id, license_num) values (3, '11tt111');
insert into user_cars (user_id, license_num) values (4, '90oa475');




select *from cars;
select *from users;
select *from user_cars;
