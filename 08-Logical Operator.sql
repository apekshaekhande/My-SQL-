CREATE DATABASE STADIUM;
CREATE TABLE Sports(
SPORT_ID INT,
ID INT,
SPORT_NAME VARCHAR(50),
AGE_OF_PLAYER INT,
NAME_OF_PLAYER VARCHAR(50),
COUNTRY varchar(50) 
);
INSERT INTO Sports VALUES (  101  ,  1   , "Cricket"   , 41  ,  "M.S.Dhoni"       ,  "India" );
INSERT INTO Sports VALUES (  102  ,  2   , "Tennis"    , 36  ,  "Sania.M"         ,  "India" );
INSERT INTO Sports VALUES (  103  ,  3   , "Footboll " , 37  ,  "C.Ronaldo"       , "Portuguese");
INSERT INTO Sports VALUES (  101  ,  4   , "Cricket"   , 37  ,  "AB de villiers"  ,  "South Africa" );
INSERT INTO Sports VALUES (  101  ,  5   , "Cricket"   , 34  ,  "Virat Kohli"     ,  "India" );
INSERT INTO Sports VALUES (  104  ,  6   , "Badminton" , 27  ,  "PV Sindhu"       ,  "India" );
INSERT INTO Sports(SPORT_ID,ID,SPORT_NAME,COUNTRY)
                   VALUES (  101  ,  7  ,  "Cricket" ,"India");
INSERT INTO Sports VALUES (  103  ,  8  , "Football"  , 38  ,  "sunil chhetri"   ,  "India" );
INSERT INTO Sports VALUES (  104  ,  9  , "Badminton" , 40  ,  "Lee Chong Wei"   ,  "Malaysia");
INSERT INTO Sports VALUES (  101  ,  10  , "Cricket"   , 29  ,  "Hardik Pandya"   ,  "India" );
INSERT INTO Sports VALUES (  101  ,  11  , "Cricket"   , 26  ,  "Smriti Mandhana" ,  "India" );
INSERT INTO Sports(SPORT_ID,ID,SPORT_NAME ,AGE_OF_PLAYER,COUNTRY)
                   VALUES (  103  ,  12 ,  "Football" ,   28,  "India");
INSERT INTO  Sports VALUES (102   , 20,"Tennis" ,41  ,  "Roger Federer","Switzerland" );

SELECT * FROM Sports;

CREATE TABLE Followers(
PLAYER_ID INT,
PLAYER_NAME VARCHAR(255),
SPORT_NAME VARCHAR(50),
FOLLOWERS_IN_MILLION int
);
INSERT INTO Followers VALUES (1   , "Cricket"   ,  "M.S.Dhoni" , 27);
INSERT INTO  Followers VALUES (3   , "Footboll " ,  "C.Ronaldo" , 160);
INSERT INTO  Followers VALUES (5   , "Cricket"   ,"Virat Kohli",50);
INSERT INTO  Followers VALUES (6   , "Badminton" ,  "PV Sindhu",3);
INSERT INTO  Followers VALUES (14  , "Cricket", "Rohit Sharma",20);
INSERT INTO  Followers VALUES (20   , "Tennis"   ,  "Roger Federer",18 );
INSERT INTO  Followers VALUES (22 , "Cricket"   ,  "Jasprit Bumrah" , 9);
INSERT INTO  Followers VALUES (11  , "Cricket", "Smriti Mandhana" ,7);

SELECT * FROM FOLLOWERS;

#ANY -

SELECT  NAME_OF_PLAYER
FROM SPORTS
WHERE ID =ANY(SELECT PLAYER_ID FROM FOLLOWERS WHERE FOLLOWERS_IN_MILLION =160);

SELECT  NAME_OF_PLAYER
FROM SPORTS
WHERE ID =ANY(SELECT PLAYER_ID FROM FOLLOWERS WHERE FOLLOWERS_IN_MILLION >10);

#ALL-

SELECT ALL NAME_OF_PLAYER
FROM SPORTS
WHERE TRUE;

SELECT  NAME_OF_PLAYER
FROM SPORTS
WHERE ID =ALL(SELECT PLAYER_ID FROM FOLLOWERS WHERE FOLLOWERS_IN_MILLION >10);


# AND- It display result when both conditions evaluates to true

SELECT * FROM sports WHERE SPORT_ID =101 AND COUNTRY="India";
SELECT * FROM Sports WHERE SPORT_NAME="Badminton"AND COUNTRY<>"India";
SELECT *FROM Sports WHERE AGE_OF_PLAYER<40 AND SPORT_NAME="Cricket";


# OR- It display result when any one condition evaluates to true

SELECT * FROM sports WHERE SPORT_ID =101 OR COUNTRY="India";
SELECT * FROM Sports WHERE SPORT_NAME="Badminton"OR COUNTRY<>"India";
SELECT *FROM Sports WHERE AGE_OF_PLAYER<40 OR SPORT_NAME="Cricket";

#LIKE-

SELECT * FROM  Sports  WHERE COUNTRY         LIKE "I%" ;
SELECT * FROM  Sports  WHERE SPORT_NAME      LIKE "%l" ;
SELECT * FROM  Sports  WHERE NAME_OF_PLAYER  LIKE "%Dh%";
SELECT * FROM  Sports  WHERE NAME_OF_PLAYER  LIKE "_A%";
SELECT * FROM  Sports  WHERE SPORT_NAME      LIKE "C_%";
SELECT * FROM  Sports  WHERE SPORT_NAME      LIKE "C__%";
SELECT * FROM  Sports  WHERE SPORT_NAME      LIKE "F%l";

#NOT LIKE-
SELECT * FROM  Sports  WHERE COUNTRY       NOT  LIKE "I%" ;
SELECT * FROM  Sports  WHERE SPORT_NAME    NOT  LIKE " %N" ;
SELECT * FROM  Sports  WHERE NAME_OF_PLAYER  NOT LIKE " %H%";
SELECT * FROM  Sports  WHERE NAME_OF_PLAYER NOT LIKE "_A%";


#IN- FOR SELECTING MULTIPLE COLUMNS AT ONCE/ ALTERNATE TO OR FUNCTION
SELECT * FROM Sports WHERE SPORT_NAME IN ("cricket","tennis");

#NOT IN-
SELECT * FROM Sports WHERE SPORT_NAME NOT IN ("cricket","tennis");

#IS NULL
SELECT ID FROM SPORTS WHERE NAME_OF_PLAYER IS NULL;
SELECT SPORT_ID,ID,SPORT_NAME FROM SPORTS WHERE AGE_OF_PLAYER IS NULL;

#IS NOT NULL
SELECT ID FROM Sports WHERE AGE_OF_PLAYER IS NOT NULL;
SELECT ID,AGE_OF_PLAYER,COUNTRY FROM Sports WHERE NAME_OF_PLAYER IS NOT NULL;

#BETWEEN-
SELECT * FROM SPORTS WHERE AGE_OF_PLAYER BETWEEN 30 AND 40;