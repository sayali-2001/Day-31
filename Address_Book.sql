create database AddressBook;
use AddressBook;
create table Address_book(id int unsigned NOT NULL AUTO_INCREMENT, 
first_name varchar(15), last_name varchar(10) , city varchar(50),
state varchar(50), 
zip int, 
phoneNo long, 
email varchar(100), 
primary key(id)
);
insert into Address_book(first_name,last_name,city,state,zip,phoneNo,email)
values('Shriya','Thakare','Amravati','Maharashtra',444906,1234345646,'abcd@gmail.com'),
('Devyani','Deshmukh','Nagpur','Maharashtra',444533,4564651323,'pqr@gmail.com');
SET SQL_SAFE_UPDATES=0;
update Address_Book set city='Pune' where first_name='Devyani';
SET SQL_SAFE_UPDATES=1;
alter table Address_Book add type varchar(15) after last_name;
SET SQL_SAFE_UPDATES=0;
update Address_Book set type='Cousin' where first_name='Shriya';
SET SQL_SAFE_UPDATES=1;
select count(id) as person from Address_Book;
SET SQL_SAFE_UPDATES=0;
update Address_Book set type='Friend' where first_name='Devyani';
SET SQL_SAFE_UPDATES=1;
delete from Address_Book where last_name = 'Deshmukh';
select * from Address_Book;

select * from Address_Book where city = 'Banglore' or state = 'Mp';

select * from Address_Book order by first_name ASC;

select * from Address_Book order by city ASC;

select count(first_name) from Address_Book where type = 'Cousin';




