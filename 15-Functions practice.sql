CREATE DATABASE Functions;
USE Functions;
SET GLOBAL log_bin_trust_function_creators=1;
CREATE TABLE Books(
             BookId INTEGER ,
             Title VARCHAR(50),
             Price_of_book_Rs int,
             book_sold int
             );

insert into Books values(1,'Harry Potter and the Philosopher\'s Stone',100,25);
insert into Books values(2,'Harry Potter and the Chamber of Secrets',120,21);
insert into Books values(3,'Harry Potter and the Half-Blood Prince',130,28);
insert into Books values(4,'Harry Potter and the Goblet of Fire',280,10);

insert into Books values(5,'Night Without End',200,5);
insert into Books values(6,'Fear is the Key',300,11);
insert into Books values(7,'Where Eagles Dare',290,14);

insert into Books values(8,'Sense and Sensibility',300,20);
insert into Books values(9,'Pride and Prejudice',400,5);
insert into Books values(10,'Emma',100,23);

DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `function_book_sales`(B_ID int) RETURNS int
BEGIN
DECLARE SALES INT;
SELECT Price_of_book_Rs*book_sold INTO Sales FROM Books WHERE Bookid =B_ID;
RETURN Sales;
END//


SELECT Bookid,Title,price_of_book_rs,book_sold,function_book_sales(Bookid)as sales from books;


#let's create function on another table;

CREATE TABLE myemp (
   EMP_ID decimal(6,0) NOT NULL DEFAULT 0,
   FIRST_NAME varchar(20) DEFAULT NULL,
   LAST_NAME varchar(25) NOT NULL,
   EMAIL varchar(25) NOT NULL,
   HIRE_DATE date NOT NULL
) ;

INSERT INTO  myemp  VALUES (100,'Steven','King','SKING','1998-06-17');
INSERT INTO  myemp  VALUES(101,'Neena','Kochhar','NKOCHHAR','1987-06-18');
INSERT INTO  myemp  VALUES(102,'Lex','De Haan','LDEHAAN','1987-06-19');
INSERT INTO  myemp  VALUES(103,'Alexander','Hunold','AHUNOLD','1976-06-20');
INSERT INTO  myemp  VALUES(104,'Bruce','Ernst','BERNST','2000-06-21');
INSERT INTO  myemp  VALUES(105,'David','Austin','DAUSTIN','1987-06-22');
INSERT INTO  myemp  VALUES(106,'Valli','Pataballa','VPATABAL','1980-06-23');
INSERT INTO  myemp  VALUES(107,'Diana','Lorentz','DLORENTZ','2020-06-24');
INSERT INTO  myemp  VALUES(108,'Nancy','Greenberg','NGREENBE','1987-06-25');
INSERT INTO  myemp  VALUES(109,'Daniel','Faviet','DFAVIET','1992-06-26');
INSERT INTO  myemp  VALUES(110,'John','Chen','JCHEN','2021-06-27');

DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `Function_experience`(Employee_id INT) RETURNS int
BEGIN
DECLARE Exp int;
SELECT YEAR(now())-YEAR(hire_date)INTO Exp FROM myemp WHERE emp_id=employee_id;
RETURN Exp ;
END//

SELECT hire_date,function_experience(emp_id) as exp FROM MYEMP ;

