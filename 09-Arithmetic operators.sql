CREATE DATABASE Arithmatic_operator;
USE Arithmatic_operator;

CREATE TABLE Employee(
  Emp_no INT NOT NULL,
  First_name VARCHAR(30),
  Last_name VARCHAR(30),
  Joining_date DATE,
  Salary INT
);

INSERT INTO Employee VALUES  
(101,'juli','Patterson','2011-07-27',10000),
(102,'Trenna','Rajs','1984-07-28',7000),
(103,'Curtis','Davies','1989-07-29',18000),
(104,'Randall','Matos','1980-07-30',12000),
(105,'Peter','Vargas','1998-07-31',15000),
(106,'John','Russell','1991-08-01',11000),
(107,'Karen','Partners','2019-08-02',10500),
(108,'Alberto','Errazuriz','1987-08-03',18000),
(109,'Gerald','Cambrault','2015-08-04',9500),
(110,'Eleni','Zlotkey','1982-08-05',12000),
(111,'Peter','Tucker','1999-08-06',17000),
(112,'David','Bernstein','2013-08-07',8000),
(113,'Peter','Hall','1983-08-08',17500),
(114,'Christopher','Olsen','1979-08-09',9500),
(115,'Nanette','Cambrault','1988-08-10',16000),
(116,'Oliver','Tuvault','1992-08-11',14500),
(117,'Janette','King','1994-08-12',12000),
(118,'Patrick','Sully','2002-08-13',19000),
(119,'Allan','McEwen','1986-08-14',13000),
(120,'Lindsey','Smith','1999-08-15',9000);

SELECT * FROM Employee;


SELECT Emp_no, Salary,
(salary * 0.05) AS "Services Tax"
FROM Employee;

SELECT Emp_no, Salary,
(Salary * 0.05) AS "Services Tax",
(2000) AS "Bonus"
FROM Employee;

SELECT Emp_no, Salary,
(salary * 0.05) AS "Services Tax",
(2000) AS "Bonus",
Salary-(Salary * 0.05)+2000 AS "Net Salary"
FROM Employee;

SELECT Emp_no, Salary,
(Salary * 0.05) AS "Services Tax",
(2000) AS "Bonus",
Salary-(Salary * 0.05)+2000 AS "Net Salary",
round((Salary-(Salary * 0.05)2000)/4) AS "Salary Per Week",
round((Salary-(Salary * 0.05)+2000)) AS "Salary Per Week"
FROM Employee;

SELECT Emp_no, Salary,
(Salary * 0.05) AS "Services Tax",
(2000) AS "Bonus",
Salary-(Salary * 0.05)+2000 AS "Net Salary",
round((Salary-(Salary * 0.05)+2000)/4) AS "Salary Per Week",
round((Salary-(Salary * 0.05)+2000)%4) AS "Reminder"
FROM Employee;
