SELECT * FROM learningmysql.student;
use `learningmysql`;
drop table student;
 
 create table student(
 StudentID int,
 Firstname varchar(30),
 Lastname varchar(30),
 Branch varchar(30),
 City varchar(20)
 );
 
 insert into student values(101,'Nitin','Lawate','Mech','Pune','O');
  insert into student values(102,'Swaraj','Pawar','IT','Mumbai');
   insert into student values(103,'Abhi','Bhosale','Comp','Blr');
    insert into student values(104,'Yash','Chauhan','ENTC','Nashik');
     insert into student values(105,'Kuldip','Patil','Civil','Chennai');
     
     ALTER TABLE student ADD  Bloodgroup varchar(255);
     insert into student (Bloodgroup) values('O');
	update student set Bloodgroup='o' where studentID='101';

     delete FROM student where Bloodgroup='O';
     select *FROM student;