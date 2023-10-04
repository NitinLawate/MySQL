--------- Trigger--------

SET @sum=0;

select *  from accounts;

insert into accounts values(1,10000.23);
insert into accounts values(2,20000);

drop trigger trg_insert;

select @sum;

CREATE TRIGGER trg_insert BEFORE INSERT on accounts
for EACH ROW
SET @sum=@sum+NEW.amount;


CREATE TABLE accounts(account_nun int,amount decimal(10,2));






--  ****************************************************************
select sample_fn_no_param ();
DELIMITER |
CREATE FUNCTION sample_fn_no_param ()
RETURNS INT deterministic
BEGIN
DECLARE count INT;
SELECT COUNT(*) INTO count FROM emp;
RETURN count;
END
|
DELIMITER ;









SELECT CalcIncome (1000);

DELIMITER //

CREATE FUNCTION CalcIncome ( starting_value INT )
RETURNS INT Deterministic
BEGIN
   DECLARE income INT;
   SET income = 0;

   label1: WHILE income <= 3000 DO
     SET income = income + starting_value;
   END WHILE label1;

   RETURN income;
END; //






delimiter $$

CREATE PROCEDURE fact(IN x INT)
BEGIN
  DECLARE result INT;
  DECLARE i INT;
  SET result = 1;
  SET i = 1;
  WHILE i <= x DO
    SET result = result * i;
    SET i = i + 1;
  END WHILE;

  SELECT x AS Number, result as Factorial;

END;

$$

CALL fact(1);
CALL fact(2);
CALL fact(4);
CALL fact(0);




DELIMITER |
CREATE PROCEDURE sample_sp_with_params (IN empId INT UNSIGNED, OUT oldName VARCHAR(20), INOUT newName VARCHAR(20))
BEGIN
SELECT `first name` into oldName FROM emp where id = empId;
UPDATE emp SET `first name`= newName where id = empId;
END
|
DELIMITER ;

-- Execute and Verify Commands
set @inout='updatedHJK';
CALL sample_sp_with_params(1,@out,@inout);
select @out,@inout;
select * from emp;