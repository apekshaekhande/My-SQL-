#JOINS
CREATE DATABASE JOINS;
USE joins;
CREATE TABLE EMPLOYEE(
EMP_ID INT,
FIRST_NAME VARCHAR(255),
DEP_ID INT
);
INSERT INTO EMPLOYEE VALUES(1,"A",101),(2,"B",102),(3,"C",101);
INSERT INTO EMPLOYEE(EMP_ID,FIRST_NAME)VALUES(4,"D");

CREATE TABLE DEPARTMENT(
DEP_ID INT,
DEP_NAME VARCHAR(255),
SALARY DECIMAL
);
INSERT INTO DEPARTMENT VALUES(101,"HR",1000),(102,"Marketing",2000),(103,"IT",3000);
INSERT INTO DEPARTMENT(DEP_ID,DEP_NAME)VALUES(104,"IT");

# INNER JOIN
SELECT * FROM EMPLOYEE INNER JOIN DEPARTMENT ON EMPLOYEE.DEP_ID=DEPARTMENT.DEP_ID;

# BY USING ALIAS
SELECT * FROM EMPLOYEE E JOIN DEPARTMENT D ON E.DEP_ID=D.DEP_ID;

SELECT EMP_ID ,DEP_NAME FROM DEPARTMENT D JOIN EMPLOYEE E ON E.DEP_ID=D.DEP_ID;

#LEFT JOIN
SELECT *FROM EMPLOYEE E LEFT JOIN DEPARTMENT D ON E.DEP_ID= D.DEP_ID;


#RIGHT JOIN
SELECT * FROM EMPLOYEE E RIGHT JOIN DEPARTMENT D ON E.DEP_ID=D.DEP_ID; 


#FULL OUTER JOIN
SELECT *FROM EMPLOYEE LEFT JOIN DEPARTMENT  USING (DEP_ID)
UNION
SELECT * FROM EMPLOYEE RIGHT JOIN DEPARTMENT  USING (DEP_ID);

#CROSS JOIN
SELECT * FROM EMPLOYEE CROSS JOIN DEPARTMENT ;

# 2nd EXAMPLE -

CREATE TABLE movies (
id integer, 
title varchar(50), 
category varchar(25)
);

INSERT INTO movies VALUES   (1,	'ASSASSIN\'S CREED: EMBERS','Animations'),
							(2,'Real Steel','Animations'),
							(3,'Alvin and the Chipmunks','Animations'),
							(4,'The Adventures of Tin Tin','Animations'),
							(5,'Safe','Action'),
							(6,'Safe House','Action'),
							(7,'GIA','18+'),
							(8,'Deadline 2009','18+'),
							(9,'The Dirty Picture','18+'),
							(10,'Marley and me','Romance');

CREATE TABLE members(
memid integer, 
first_name varchar(25), 
last_name varchar(25), 
movieid integer
);

INSERT INTO members VALUES(1,'Alicia','Alarcon', 1),
(2,'Don','Draper', 2),
(3,'Lizzie','Moss', 5),
(4,'Eldon','Chance', 8),
(5,'Jenny','Patterson', 10),
(6,'Craig','Daniels', null),
(7,'Denny', 'Peters',null),
(8,'Patty','Pattinson',null);

SELECT * FROM joins.movies;
SELECT * FROM joins.members;

# INNER JOIN -
SELECT * FROM movies INNER JOIN members ON movies.id= members.movieid; 

#LEFT JOIN-
SELECT * FROM movies left JOIN members ON movies.id=members.movieid;

# RIGHT JOIN -
Select * from movies right join members ON movies.id =members.movieid;


CREATE TABLE drinks (
  drinkname varchar(50), 
  rate float(5,2) 
) ;

INSERT INTO drinks VALUES 
							('Tea',5.00),
							('Coffee',15.00),
							('Pepsi',20.00);


CREATE TABLE meals (
  mealname varchar(50),
  rate float(5,2) 
) ;

INSERT INTO meals VALUES 
						('Omlet',10.50),
						('Sausage',15.50),
						('Pancake',40.75);

# cross join -in case of no any common column is present

Select drinkname,mealname from meals cross join drinks;


#SELF JOIN
CREATE TABLE Class(
Roll_No int,
STUDENT_NAME VARCHAR(100),
AGE INT,
T_ID INT,
T_NAME VARCHAR(100)
);

INSERT INTO Class VALUES(1,"RAHUL",13,5,"Deepa");
INSERT INTO Class VALUES(2,"Kedar",12,0,"neeraj");
INSERT INTO Class VALUES(3,"Suyog",11,1,"pavan");
INSERT INTO Class VALUES(4,"Sheetal",14,3,"rakesh");
INSERT INTO Class VALUES(5,"jiyansh",10,4,"atul");

SELECT*FROM Class;
SELECT T1.ROLL_NO,T1.STUDENT_NAME,T2.T_ID,T2.T_NAME
FROM Class T1 
RIGHT join Class T2
on T1.roll_no=T2.T_ID;

