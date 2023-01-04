CREATE DATABASE S_DATA;
USE  S_DATA;

#1) CREATE TABLE -
CREATE TABLE Student(
ID INT, 
NAME VARCHAR(255),
AGE INT,
CITY VARCHAR(255)
);

SELECT * FROM Student;

# ALTER - ADD COLUMN
ALTER TABLE Student ADD COLUMN MARKS INTEGER DEFAULT 0;

#ALTER - DROP  COLUMN
ALTER TABLE Student DROP COLUMN CITY;

#ALTER - RENAME TABLE
ALTER TABLE Student RENAME TO Class;

Select * from Class;
# ALTER -MODIFY TABLE
ALTER TABLE Class MODIFY COLUMN NAME VARCHAR (10);
Describe Class;

# Drop 
# Drop Table class;

#RENAME 
RENAME TABLE class To my_Class;
SELECT * FROM My_Class;

# TRUNCATE
TRUNCATE My_Class;
SELECT * FROM My_Class;
-----------------------------------------------------------------------------------------------------------------------------------------
#DML COMMAND

# INSERT COMMAND
INSERT INTO My_Class VALUES(1,"Rani",18,89);
INSERT INTO My_Class VALUES(2,"Ramesh",20,80);
INSERT INTO My_Class VALUES(3,"Priya",24,78);
INSERT INTO MY_CLASS VALUES (4,"Joy",22,89);

SELECT* FROM My_Class;

# UPDATE COMMAND
SELECT * FROM My_Class;
SET SQL_SAFE_UPDATES =0;
UPDATE My_Class
SET MARKS = 90
WHERE ID = 1;

SELECT* FROM My_Class;

# DELETE COMMAND
DELETE FROM My_class WHERE ID =3;
SELECT *FROM My_class;
-----------------------------------------------------------------------------------------------------------------------------------------
# SELECT
SELECT ID,NAME FROM My_class WHERE AGE=18;


-----------------------------------------------------------------------------------------------------------------------------------------
# DQL COMMAND
# GRANT PERMISSION
GRANT SELECT, UPDATE ON MY_Table TO One_USER, ANOTHER_USER;

# REVOKE PERMISSION
REVOKE SELECT, UPDATE ON MY_Table FROM USER1, USER2;


-----------------------------------------------------------------------------------------------------------------------------------------
#TCL COMMAND
START TRANSACTION;
INSERT INTO  My_class VALUES (5,"Krishna",22,79);
INSERT INTO  My_class VALUES (6,"Merry",20,68);
INSERT INTO My_Class VALUES (7,"Sana",21,80);
SAVEPOINT S1;

UPDATE My_Class 
SET NAME= "Carry"
WHERE ID=5;
SAVEPOINT S2;

DELETE FROM My_Class WHERE ID=6;
SAVEPOINT S3;

SELECT * FROM My_class;

ROLLBACK TO S2;

COMMIT;













