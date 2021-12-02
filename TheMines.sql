drop database if exists `TheMines`;

create database TheMines;
use TheMines;

create table Department(
departmentID int not null primary key,
divisions enum("Research & logistics", "finance","mining & construction","engineering"),
numberOfworkers int,
revenue decimal(15,2),
index id_index(departmentID)
);


create table Staff(
staffID varchar(5) not null,
Staffname varchar(40),
gender enum("Male","Female"),
dob date,
Staffposition varchar(40),
Email varchar(60),
PhoneNumber int,
index (staffID),
primary key(staffID)
);

create table miner(
staffID varchar(10) not null,
health enum("healthy","weak"),
foreign key (staffID) references Staff(staffID) ON UPDATE CASCADE ON DELETE CASCADE
);

-- create table security(
-- staffID varchar(10) not null,
-- dayOfDuty date,
-- checkIn time,
-- checkOut time,
-- foreign key (staffID) references Staff(staffID) ON UPDATE CASCADE ON DELETE CASCADE
-- );

create table manager(
staffID varchar(10) not null,	
departmentID int not null,
mgrstartDate date,
salary decimal(10,2),
foreign key (staffID) references Staff(staffID) ON UPDATE CASCADE ON DELETE CASCADE
);

create table product(
productID int auto_increment primary key,
productName varchar(15),
price decimal(15,2));

create table client(
clientID int Unique,
clientName varchar(60),
contact varchar(12),
Email varchar(100));

create table ClientOrder(
orderID int auto_increment primary key,
clientID int,
ClientOrder varchar(30),
dateofOrder date,
timeOfOrder time,
index (orderID),
foreign key (clientID) references client(clientID) ON UPDATE CASCADE ON DELETE CASCADE
);

create table miningField(
mName varchar(50),
address varchar(50),
nature enum("depleted","active"));

create table machinery(
modelNo varchar(20) not null,
Mname varchar(90),
state enum("active", "repairs"),
maintenance decimal(10,2));

create table transaction(
transactionID varchar(15) Unique,
clientID int,
orderID int,
productID int,
dateOfTransaction date,
timeOfTransaction time,
AmountPaid decimal(15,2),
index(transactionID),
foreign key (clientID) references client(clientID) ON UPDATE CASCADE ON DELETE CASCADE,
foreign key (orderID) references ClientOrder(orderID) ON UPDATE CASCADE ON DELETE CASCADE,
foreign key (productID) references Product(productID) ON UPDATE CASCADE ON DELETE CASCADE);



create table materials(
materialName varchar(40),
Materialtype enum("explosive","chemical")
);




