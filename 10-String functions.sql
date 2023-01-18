#STRING FUNCTIONS
CREATE DATABASE String_function;
USE String_function;
CREATE TABLE EMPLOYEE(
E_ID INT NOT NULL,
E_FIRST_NAME VARCHAR(255) NOT NULL,
E_LAST_NAME VARCHAR(255) NOT NULL,
MAIL_ID VARCHAR(255) UNIQUE
);

INSERT INTO EMPLOYEE VALUES (1,"Raju","Singh","rajusingh1@gmail.com");
INSERT INTO EMPLOYEE VALUES (2,"    Priya","patil","priyapatil2@gmail.com");
INSERT INTO EMPLOYEE VALUES (3,"Apeksha","Ekhande","apekshaekhande3@gmail.com");
INSERT INTO EMPLOYEE VALUES (4,"Snehal    ","Pawar","Snehalpawar4@gmail.com");
INSERT INTO EMPLOYEE VALUES (5,"Shubham","Raje","shubhambhagat5.com");
INSERT INTO EMPLOYEE VALUES (6,"Neha","Nikam","nehanikam6@gmail.com");
INSERT INTO EMPLOYEE VALUES (7,"Piyush","Tambe","piyushtambe7@gmail.com");
INSERT INTO EMPLOYEE VALUES (8,"Yash","Kumbhar","yashkumbhar8@gmail.com");
INSERT INTO EMPLOYEE VALUES (9,"Priyanka","Pawar","priyankapawar9@gmail.com");
INSERT INTO EMPLOYEE VALUES (10,"Sangita","Ekhande","sangitaekhande10@gmail.com");


# CHAR_LENGTH-
SELECT E_FIRST_NAME ,CHAR_LENGTH(E_FIRST_NAME)AS CHARACTER_LENGTH FROM EMPLOYEE;
SELECT MAIL_ID ,CHAR_LENGTH(MAIL_ID)AS CHARACTER_LENGTH FROM EMPLOYEE;
select char_length("india");
select char_length("india") As result;

#LENGTH
SELECT E_FIRST_NAME ,LENGTH(E_FIRST_NAME) AS LENGTH_OF_NAME FROM EMPLOYEE;
SELECT LENGTH("MY NAME IS APEKSHA") AS LengthOfString;


#CONCAT
SELECT CONCAT(E_FIRST_NAME,"  ",E_LAST_NAME) AS FULL_NAME FROM EMPLOYEE;
SELECT CONCAT("the popunation of india is ",140,"crores") as result;

#CONCAT_WS
SELECT CONCAT_WS("-", "SQL", "Tutorial", "is", "fun!") AS ConcatenatedString;

#FIELD-
SELECT FIELD("q", "s", "q", "l");
SELECT FIELD(0, 0, 1, 2, 3, 4, 5);

#LOWER / LCASE-
SELECT LOWER( E_FIRST_NAME) AS LOWER_CASE FROM EMPLOYEE;
SELECT LOWER("INDIA") AS RESULT;
SELECT LCASE( E_FIRST_NAME) AS LOWER_CASE FROM EMPLOYEE;
SELECT LCASE("SQL Tutorial is FUN!");

#UPPER / UCASE
SELECT UPPER(E_FIRST_NAME)AS UPPER_CASE FROM EMPLOYEE;
SELECT UPPER(CONCAT(E_FIRST_NAME," ",E_LAST_NAME))AS FULL_NAME FROM EMPLOYEE;
SELECT UPPER("india") AS RESULT;
SELECT UCASE("india") AS RESULT;

#FIND_IN_SET-
SELECT FIND_IN_SET("q", null);
SELECT FIND_IN_SET("p", "A,p,e,k,s,h,a");

#LEFT
SELECT LEFT("United state of America",character_length("united state"))AS RESULT;

#RIGHT 
SELECT RIGHT("United state of America",character_length("America"))AS RESULT;

#FORMAT-
SELECT FORMAT(13245.4567, 2);
SELECT FORMAT(265142.897, 0);

#INSERT-
SELECT E_FIRST_NAME,INSERT(E_FIRST_NAME,2,3,"ME")AS MODIFIED_NAME FROM EMPLOYEE;
SELECT INSERT("apekshaaaekhande.com", 2, 9, "Example");
SELECT INSERT("priyankaa.com", 11, 3, "no");

#INSTR-
SELECT MAIL_ID ,INSTR(MAIL_ID,".COM")AS MATCHPOSITION FROM EMPLOYEE;
SELECT INSTR("tea4me", "4") AS MATCHPOSITION;
SELECT INSTR("apeksha.com", "COM") AS MATCHPOSITION;

#LOCATE-
SELECT MAIL_ID ,LOCATE(".COM",MAIL_ID)AS MATCHPOSITION FROM EMPLOYEE;
SELECT LOCATE("4", "tea4me") AS MATCHPOSITION;

#LPAD
SELECT E_ID,LPAD(E_ID,2,"0")AS EMP_ID FROM EMPLOYEE;
SELECT LPAD('PINK', 5, '#');  
SELECT LPAD("PINK",6,"@");

#RPAD
SELECT E_ID,RPAD(E_ID,3,"0#")AS EMP_ID FROM EMPLOYEE;
SELECT RPAD('PINK', 9, 'COLOR');  
SELECT RPAD("PINK",5,"@");

#TRIM-
SELECT E_FIRST_NAME, TRIM(E_FIRST_NAME) AS TRIM_SPACE FROM EMPLOYEE;
SELECT TRIM("    APEKSHA    ")AS RESULT;
SELECT TRIM(".com" FROM "apekshaekhande.com") AS RESULT;

#LTRIM
SELECT E_FIRST_NAME, LTRIM(E_FIRST_NAME) AS TRIM_SPACE FROM EMPLOYEE;
SELECT LTRIM("       APEKSHA       ")AS RESULT;

#RTRIM
SELECT E_FIRST_NAME, RTRIM(E_FIRST_NAME) AS TRIM_SPACE FROM EMPLOYEE;
SELECT RTRIM("       APEKSHA       ")AS RESULT;

#MID
SELECT MID("I love my india",8,8)AS RESULT;
SELECT MID("Open that door",5,5)AS RESULT;

#POSITION
SELECT POSITION("n" IN "Indigo") AS RESULT;
 
 #SUBSTR-
SELECT E_FIRST_NAME,SUBSTR(E_FIRST_NAME,2,5) AS RESULT FROM EMPLOYEE;
SELECT SUBSTR("INDIA IS MY COUNTRY", 5, 10)AS RESULT;  
SELECT SUBSTR("INDIA IS MY COUNTRY", 5, 1)AS RESULT; 
SELECT SUBSTR("INDIA IS MY COUNTRY", 5, 7)AS RESULT; 

#SUBSTRING
SELECT SUBSTRING('HELLO WORLD', 5, 1);  
SELECT SUBSTRING('HELLO WORLD', 5, 6);  
SELECT SUBSTRING('HELLO WORLD', 5,4);  
