CREATE DATABASE ORG;

SHOW DATABASES;

USE ORG;

CREATE TABLE Worker (

         WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,

         FIRST_NAME CHAR(25),

         LAST_NAME CHAR(25),

         SALARY INT(15),

         JOINING_DATE DATETIME,

         DEPARTMENT CHAR(25)

);


INSERT INTO Worker

         (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES

                 (001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),

                 (002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),

                 (003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),

                 (004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),

                 (005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),

                 (006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),

                 (007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),

                 (008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');



CREATE TABLE Bonus (

         WORKER_REF_ID INT,

         BONUS_AMOUNT INT(10),

         BONUS_DATE DATETIME,

         FOREIGN KEY (WORKER_REF_ID)

                 REFERENCES Worker(WORKER_ID)

        ON DELETE CASCADE

);



INSERT INTO Bonus

         (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES

                 (001, 5000, '16-02-20'),

                 (002, 3000, '16-06-11'),

                 (003, 4000, '16-02-20'),

                 (001, 4500, '16-02-20'),

                 (002, 3500, '16-06-11');
                 
                 
                 
CREATE TABLE Title (

         WORKER_REF_ID INT,

         WORKER_TITLE CHAR(25),

         AFFECTED_FROM DATETIME,

         FOREIGN KEY (WORKER_REF_ID)

                 REFERENCES Worker(WORKER_ID)

        ON DELETE CASCADE

);



INSERT INTO Title

         (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES

 (001, 'Manager', '2016-02-20 00:00:00'),

 (002, 'Executive', '2016-06-11 00:00:00'),

 (008, 'Executive', '2016-06-11 00:00:00'),

 (005, 'Manager', '2016-06-11 00:00:00'),

 (004, 'Asst. Manager', '2016-06-11 00:00:00'),

 (007, 'Executive', '2016-06-11 00:00:00'),

 (006, 'Lead', '2016-06-11 00:00:00'),

 (003, 'Lead', '2016-06-11 00:00:00');
 
 
 -- 1) Select FIRST_NAME AS WORKER_NAME from Worker;
 
 -- 2 Select upper(FIRST_NAME) from Worker;
 
 -- 3 select distinct department from worker;
 
 -- 4 select substring(first_name,1,3) from worker;
 
  select rtrim(first_name) from worker;
 
  select ltrim(DEPARTMENT) from worker;
 
  select distinct length(DEPARTMENT) from worker;
  
  Select REPLACE(FIRST_NAME,'a','A') from Worker;
  
  Select CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'COMPLETE_NAME' from Worker;
  
  Select * from Worker order by FIRST_NAME asc;
  
  Select * from Worker order by FIRST_NAME asc,DEPARTMENT desc;
  
  Select * from Worker where FIRST_NAME in ('Vipul','Satish');
  
  Select * from Worker where FIRST_NAME not in ('Vipul','Satish');
  
  Select * from Worker where DEPARTMENT like 'admin%';
  
  Select * from Worker where FIRST_NAME like '%a%';
  
  Select * from Worker where FIRST_NAME like '%a';
  
  Select * from Worker where FIRST_NAME like '_____h';
  
  Select * from Worker where SALARY between 100000 and 500000;
  
  Select * from Worker where year(JOINING_DATE) = 2014 and month(JOINING_DATE) = 2;
  
  SELECT COUNT(*) FROM worker WHERE DEPARTMENT = 'Admin';