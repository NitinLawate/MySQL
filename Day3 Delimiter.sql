






CREATE TABLE emp(`first name` VARCHAR(20), id INT PRIMARY KEY);

insert into emp values('HJK', 1);
insert into emp values('ABC', 2);
insert into emp values('DEF', 3);

SELECT * FROM learningmysql.emp;




call getHyundaiTotal("Hyundai",@tol);
select @tol;
delimiter $$

create procedure getHyundaiTotal(IN mkrName varchar(30),OUT total int)

BEGIN

  select count(*) into total from cars_india_dataset where maker=mkrName;

END $$
drop procedure getHyundaiTotal;






select @tol as 'Total';


call getTotalCarsInIndia("Hyundai");









delimiter $$

create procedure myProcedure2(IN mkr varchar(50))

BEGIN

  select * from cars_india_dataset where maker=mkr;

END $$

call myProcedure2("Hyundai");





call getHyundai("Hyundai",@tol);

select @tol;

delimiter $$

create procedure getTotalCarsInIndia(IN mkrName varchar(30),OUT total int)

BEGIN

  select count(*) into total from cars_india_dataset where maker=mkr;

END $$

call getTotalCarsInIndia("Hyundai");

