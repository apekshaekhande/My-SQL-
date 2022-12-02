#DML COMMAND

CREATE DATABASE S_Data2;
USE S_Data2;

CREATE TABLE LIST(
STD_ID INT,
SNAME VARCHAR(255),
COURSE VARCHAR(255),
MARKS INT
);

#1) INSERT - 

INSERT INTO LIST VALUES(1,"Rani","mysql",50);
INSERT INTO LIST VALUES(2,"Pooja","DA",60);
INSERT INTO LIST VALUES(3,"Nishant","Python",90);
INSERT INTO LIST VALUES(4,"pari","mysql",null);
INSERT INTO LIST VALUES(5,"Mukta","DS",80);

INSERT INTO LIST VALUES(6,"Bhushan","DS",90),(7,"OM","Mysql",Null),(8,"Meena","DS",66),(9,"Priya","DA",60);
INSERT INTO LIST VALUES(10,"karan","DS",90),(11,"Krishna","Mysql",89),(12,"Joy",Null,66),(13,"priya","DA",60);

INSERT INTO LIST (STD_ID,SNAME,COURSE)VALUES(14,"Sakshi","Mysql");
INSERT INTO LIST (STD_ID,SNAME,MARKS)VALUES(15,"prachi",89);

#2) UPDATE- 

UPDATE LIST 
SET COURSE ="DataAnalytics"
WHERE STD_ID=2;

UPDATE LIST 
SET COURSE= "Datascience"
WHERE STD_ID=7;

UPDATE LIST 
SET MARKS=70
WHERE STD_ID=8;

UPDATE LIST 
SET MARKS=89
WHERE COURSE IS NULL;

#3) DELETE-
set sql_safe_updates=0;
DELETE FROM LIST WHERE STD_ID =3;
DELETE FROM LIST WHERE NAME="MUKTA";
DELETE FROM LIST WHERE STD_ID IN(14,15);


