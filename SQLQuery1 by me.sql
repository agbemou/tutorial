create database hrdep;
use hrdep
create table employee
(ID int primary key,
First_name varchar (30),
Last_name varchar(30) not null,
email varchar(30) unique,
salary int
);

insert into employee(ID, First_name,Last_name,
email)
values(1, 'koffi', 'gbemou', 'agbemou@yahoo.com');
insert into employee(ID, First_name,Last_name, email)
values(2,'akbar', 'tchatchazre', 'bakarson@gmail.com');
select* from employee
