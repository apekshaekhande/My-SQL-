# TRANSACTION CONTROL LANGUAGE
CREATE DATABASE Tcl;

#1

USE tcl;
CREATE TABLE  Alphabate ( Alpha_Id varchar(255));
INSERT INTO Alphabate value ("A");
INSERT INTO Alphabate value ("B");
START TRANSACTION ;

INSERT INTO Alphabate VALUES ("C");
INSERT INTO Alphabate VALUES ('D');

SELECT * FROM Alphabate;

ROLLBACK;

COMMIT;

SELECT * FROM Alphabate;

#2

Create table Student(S_id int,s_name varchar(30));

INSERT INTO Student VALUES (1,"Apeksha");
INSERT INTO Student VALUES (2,"Priya");

START TRANSACTION;

INSERT INTO Student VALUES (3,"Shubham");
SAVEPOINT STD1;

INSERT INTO Student VALUES (4,"Rama");
SAVEPOINT STD2;

INSERT INTO Student values (5,"Subhash");
SAVEPOINT STD3;

SELECT * FROM Student;

ROLLBACK TO STD2;

#3

CREATE TABLE Teacher(
T_id int ,
T_name varchar(255),
city varchar(255)
);

INSERT INTO Teacher  values (101,"AA","pune");
INSERT INTO Teacher  values (102,"BB","Mumbai");

START TRANSACTION;
INSERT INTO Teacher VALUES (103,"CC","Bangalore"),
			   (104,"DD","pune"),
			   (105,"EE","Mumbai");
                           
SAVEPOINT value_insert;

SET SQL_SAFE_UPDATES=0;

UPDATE Teacher SET City="Nashik"  WHERE T_id=101;
SAVEPOINT Value_Update;

DELETE FROM Teacher WHERE T_id = 104;
SAVEPOINT Value_delete;

SELECT * FROM Teacher;

ROLLBACK TO value_Update;


COMMIT;
