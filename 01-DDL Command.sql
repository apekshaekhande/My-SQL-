#DDL COMMAND

CREATE DATABASE Sdata;
USE  Sdata;

#1) CREATE TABLE -
CREATE TABLE Student(
ID INT, 
NAME VARCHAR(255),
AGE INT,
CITY VARCHAR(255)
);

INSERT INTO Student VALUES( 1,"A",19,"pune");
INSERT INTO Student VALUES( 2,"B",20,"Bangalore");
INSERT INTO Student VALUES( 3,"C",21,"Mumbai");
INSERT INTO Student VALUES( 4,"D",22,"pune");
INSERT INTO Student VALUES( 5,"E",23,"mumbai");

#2) ALTER TABLE COMMAND-

# A) ADD COLOUMN-
ALTER TABLE Student ADD COLUMN MARKS INTEGER DEFAULT 0;

# B) DELETE COLOUMN-
ALTER TABLE Student DROP COLUMN MARKS ;

# C) RENAME TABLE-
ALTER TABLE Student RENAME TO Class;

# D) MODIFY COLUMN-
ALTER TABLE CLASS MODIFY COLUMN NAME VARCHAR (10);
ALTER TABLE CLASS MODIFY AGE TINYINT;

#3) RENAME- 
RENAME TABLE CLASS TO CLASS1;

CREATE TABLE Teacher(
T_ID INT,
T_NAME VARCHAR(30)
);
INSERT INTO Teacher VALUES (101,"JK"),(102,"Shubham");

#4) TRUNCATE -
Truncate Teacher;

CREATE TABLE ABC(
ID INT,
NAME VARCHAR(30)
); 
#5) DROP TABLE-
Drop table ABC;



