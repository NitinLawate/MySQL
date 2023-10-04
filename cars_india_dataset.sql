SELECT * FROM learningmysql.cars_india_dataset;


select * from cars_india_dataset where maker='Hyundai' order by displacement;

select * from cars_india_dataset where Model='seltos';

select count(*) as 'total_count', maker from cars_india_dataset group by Maker;

select count(*), seats from cars_india_dataset group by seats;

select count(*), Fuel from cars_india_dataset group by Fuel;

select count(*) as 'total_count', type from cars_india_dataset group by type order by type;

select count(*) as 'total_count', Model from cars_india_dataset group by Model order by Model;

select count(*) as 'total_count', type from cars_india_dataset group by type having count(*) > 10;

select distinct fuel from cars_india_dataset;

select count(*), fuel from cars_india_dataset group by Fuel;

select distinct maker,fuel from cars_india_dataset where Fuel='Diesel' ;



create table department (dept_id int not null primary key, dept_name varchar(40) not null);

select * from department;

insert into department values(103,'Admin');
insert into department values(102,'HR');
insert into department values(101,'Finance');

drop table employee;

create table employee(id int primary key not null,name varchar(100),address varchar(100),age int,
deptid int, foreign key(deptId) references department(dept_id)
);

SELECT * FROM learningmysql.cars_india_dataset;

SELECT COUNT(Model) FROM cars_india_dataset where model='Amaze';  

select distinct type from cars_india_dataset;
select count(distinct model) from cars_india_dataset;

select * from cars_india_dataset where No_of_Cylinders=3;

select * from cars_india_dataset order by No_of_Cylinders asc;

select * from cars_india_dataset where model="Triber" and Maker like 'R%';

select * from cars_india_dataset where Seats between 5 and 6;







