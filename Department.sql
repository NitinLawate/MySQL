

 create database university;
 use university;
create table students (s_id INT(10) NOT NULL AUTO_INCREMENT, s_firstname VARCHAR(30) NOT NULL, s_lastname VARCHAR(30) NOT NULL, s_email VARCHAR(40), PRIMARY KEY (s_id));

insert into students (s_firstname,s_lastname,s_email) values ('Shankar', 'Bhat', 'shankar@example.com');
insert into students (s_firstname,s_lastname,s_email) values ('Venkat', 'Rao', 'venkat@example.com');
insert into students (s_firstname,s_lastname,s_email) values ('Mohan', 'Nair', 'mohan@example.com');
insert into students (s_firstname,s_lastname,s_email) values ('Abhijeet', 'Patel', 'abhi@example.com');