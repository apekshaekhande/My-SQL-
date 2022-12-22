# Comparison Operators
/*
	=           [ Equal to ] 
	!=          [ Not equal to ] 
	<>          [ Not equal to ] 
	<           [ Less than ] 
	>           [ Grater than ]  
	<=          [ Less than equal to ] 
	>=          [ Greater than equal to ]  
*/

CREATE DATABASE Comparison;
USE Comparison;

CREATE TABLE Student_Details(
  Student_id INT NOT NULL,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  Sub VARCHAR(255),
  Marks INT
);

INSERT INTO Student_Details VALUES  
(1,'Riya','Patel','Math',67),
(2,'Tanu','Raje','Science',78),
(3,'Pooja','Sahane','Math',90),
(4,'Ruchika','Patil','History',37),
(5,'Mahesh','Kadam','Science',80),
(6,'Shubham','Ekhande','Geography',78),
(7,'Sneha','Patil','Hindi',87),
(8,'Ajay','Bhide','English',79),
(9,'Atmaram','Gokhle','Marathi',93),
(10,'Tappu','Gada','Hindi',66),
(11,'Tarak','mehata','English',78),
(12,'Dinesh','patil','English',89),
(13,'Apeksha','Ekhande','math',75),
(14,'Gauri','bhagat','history',98),
(15,'Asavari','Kulthe','Science',71),
(16,'Popat','Laal','Geography',70),
(17,'Sonam','Sodi','Math',78),
(18,'Manisha','Chavhan','Science',49),
(19,'Merry','Smith','Hindi',77),
(20,'leesha','Joshi','Marathi',59);

SELECT * FROM Student_details;

SELECT * FROM Student_details WHERE Marks =70;

SELECT * FROM Student_details WHERE Marks != 70;

SELECT * FROM Student_details WHERE Marks <>60;

SELECT * FROM Student_details WHERE marks <45;

SELECT * FROM Student_details WHERE marks>60;

SELECT * FROM Student_details WHERE marks<= 70;

SELECT * FROM Student_details WHERE marks>=78;
