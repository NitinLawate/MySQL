SELECT * FROM learningmysql.employee;


create table employee(
empid int ,
name varchar(30),
salary int,
primary key(empid)
);

create table department(
deptid int,
deptname varchar(25),
primary key(deptid)
);

create table organization(
empid int,
deptid int,
foreign key(empid) references employee(empid)
foreign key(deptid)
);