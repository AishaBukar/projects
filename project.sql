use landexp;
select database();
create table employees(
employee_ID INT NOT NULL primary key auto_increment,
employee_name varchar(100) NOT NULL,
employee_address varchar(100) not null,
city varchar(30) not null,
state varchar(30) not null,
postal_code int not null,
date_employed date not null,
years_employed int,
salary varchar(30) not null,
role varchar(30) not null,
phone int not null
);

desc employees;

insert into employees(employee_name,employee_address,city,state,postal_code,
date_employed,years_employed,salary,role,phone)
values('Aisha Bukar','4 Lord Lugard Avenue','Ikoyi','lagos',1001,00-00-00,3,'$10,000','CEO',0807778211),
	  ('Akindele Oluwakemi','8 Mobolaji Bank Anthony','Ikeja','lagos',1002,00-00-00,2,'$9,000','Manager',0802328211),
      ('Isijola Temitope','9 palmgroove estate','Palmgroove','lagos',1003,00-00-00,2,'$7,000','Ticket Manager',0803328111),
      ('Oko Chioma','80 Kano Street','Lagos mainland','lagos',1009,00-00-00,2,'$7,000','Courier Manager',0809328224),
      ('Olayiwola David','5 Starlight Estate','Maryland','lagos',1006,00-00-00,2,'$6,000','Operations Manager',0807232814);
      
select * from employees;

create table bus(
bus_ID INT NOT NULL auto_increment primary key not null,
seat_no INT ,
no_of_passengers INT not null,
loading_date date
);

insert into bus(seat_no,no_of_passengers,loading_date)
values (52,30,00-00-00),
	   (52,39,00-00-00),
       (52,50,00-00-00),
       (52,52,00-00-00),
       (52,49,00-00-00),
       (52,40,00-00-00),
       (52,30,00-00-00),
       (52,25,00-00-00);
       
select * from bus;

create table ticket(
ticket_ID INT auto_increment primary key not null,
ticket_time varchar(20) not null,
location varchar(40) not null,
customer_id INT,
foreign key (customer_id) references customer(customer_ID)
);
insert into ticket(ticket_time,location)
values ('8:43am', 'lagos to abuja'),
	   ('8:43am', 'sokoto to lagos'),
       ('8:43am', 'maiduguri to abuja'),
       ('8:43am', 'lagos to abuja'),
       ('7:43am', 'abuja to kano'),
       ('9:00am', 'lagos to abuja'),
       ('8:00am', 'sokoto to abuja'),
       ('8:43am', 'lagos to abuja'),
       ('11:03am', 'kano to abuja');
select * from ticket;

create table customer(
customer_ID INT primary key auto_increment not null,
customer_name varchar(50) not null ,
phone INT not null ,
boarding_location varchar(30) not null,
customer_email varchar(50) not null
);

insert into customer(customer_name,phone,boarding_location,customer_email)
values ('Victoria Adams',0809219234,'Iddo','vadams@yahoo.com'),
	   ('Lola Adams',0809219234,'Lekki','lolaadams@yahoo.com'),
       ('Sandra Micheal',0803192365,'Agege','smicheal@yahoo.com'),
       ('Williams Seun',0879292345,'Festac','willss20@yahoo.com'),
       ('Humayrah Umar',0809219345,'Iddo','humar@yahoo.com'),
       ('Maryam Daud',0809219446,'Ogba','mdaud12@yahoo.com'),
       ('Veronica Adams',0809192345,'Lekki','v1adams@yahoo.com'),
       ('TemiOlaiya',0805219245,'Agege','tola90@yahoo.com');
       
select * from customer;
       