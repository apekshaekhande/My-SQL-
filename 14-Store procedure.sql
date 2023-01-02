# Database objects
#1)view
#2)Indexing
#3)Store procedure
#4)sequence( autoincrement)
#5)Functions
#6)Triggers

create database Database_objects;
use database_objects;

# Store procedure-

CREATE TABLE Books(
             BookId INTEGER primary key, 
             Title VARCHAR(50),
             AuthorId INTEGER 
             );

insert into Books values(1,'Harry Potter and the Philosopher\'s Stone',1);
insert into Books values(2,'Harry Potter and the Chamber of Secrets',1);
insert into Books values(3,'Harry Potter and the Half-Blood Prince',1);
insert into Books values(4,'Harry Potter and the Goblet of Fire',1);
insert into Books values(5,'Night Without End',5);
insert into Books values(6,'Fear is the Key',5);
insert into Books values(7,'Where Eagles Dare',5);
insert into Books values(8,'Sense and Sensibility',6);
insert into Books values(9,'Pride and Prejudice',6);
insert into Books values(10,'Emma',6);


DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `FIRST_SP`()
BEGIN
SELECT * FROM BOOKS WHERE BOOKID IN(1,2,3);
END//

CALL FIRST_SP;


DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `Second_SP`(x integer)
BEGIN 
select* from BOOKS
where BOOKID= x;
END//

call Second_SP(4)

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `Third_SP`(x integer)
BEGIN
DECLARE Lcl_Title VARCHAR(255);
DECLARE Lcl_Authorid INTEGER;
SELECT title, Authorid
INTO Lcl_Title ,Lcl_Authorid 
FROM Books
WHERE Bookid=x;
SELECT Concat('THE TITLE IS = ',Lcl_Title)as msg;
END//

call Third_SP(1);


DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_if`(num integer)
BEGIN 
	IF num<0 THEN
	SELECT' Number entered is Negative' As msg;
    END IF;
END//

Call proc_if(-1);

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_if_else`(num integer)
BEGIN 
	IF num<0 THEN
	SELECT' NUMBER ENTERED IS NEGATIVE' As msg;
    else
    SELECT' NUMBER ENTERED IS POSITIVE' As msg;
    END IF;
END//

Call proc_if_else(1);

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_elseif`(num integer)
BEGIN
	IF Num<0 THEN 
		SELECT 'NUMBER ENTERED IS NEGATIVE' As msg;
    ELSEIF Num>0 THEN 
		SELECT 'NUMBER ENTERED IS POSITIVE'As msg;
    ELSE 
		SELECT'ZERO ENTERED'As msg;
	END IF;
END//

Call proc_elseif(0);

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_elseif_months`(num integer)
BEGIN
	IF Num=1 THEN 
		SELECT 'January' As msg;
    ELSEIF Num=2 THEN 
		SELECT 'February'As msg;
	ELSEIF Num=3 THEN 
		SELECT 'March'As msg;
	ELSEIF Num=4 THEN 
		SELECT 'April'As msg;
	ELSEIF Num=5 THEN 
		SELECT 'May'As msg;
	ELSEIF Num=6 THEN 
		SELECT 'June'As msg;
	ELSEIF Num=7 THEN 
		SELECT 'July'As msg;
	ELSEIF Num=8 THEN 
		SELECT 'August'As msg;
	ELSEIF Num=9 THEN 
		SELECT 'September'As msg;
	ELSEIF Num=10 THEN 
		SELECT 'October'As msg;
	ELSEIF Num=11 THEN 
		SELECT 'November'As msg;
	ELSEIF Num=12 THEN 
		SELECT 'December'As msg;
    ELSE 
		SELECT'PLEASE ENTER NUMBER BETWEEN 1 TO 12'As msg;
	END IF;
END //

Call proc_elseif_months(13);

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `simple_loop`(num integer)
BEGIN
DECLARE COUNT INT DEFAULT 0;
myloop:loop
	set count=count+1;
    select concat('WELCOME HOME',count)As msg;
	if count=num then
         leave myloop;
    end if;
end loop myloop;
END//

Call simple_loop(2);

DELIMETER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `Repeat_loop`(num integer)
BEGIN
DECLARE count INTEGER DEFAULT 0;
myloop:repeat 
	SET count=count+1;
	SELECT concat('WELCOME REPEAT',Count) as msg;

until count=num
END REPEAT myloop;
END//

Call repeat_loop(3);

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `while_loop`(num integer)
BEGIN
DECLARE count INTEGER DEFAULT 0;
myloop:WHILE count<num DO
	SET count=count+1;
	SELECT concat('WELCOME WHILE',Count) as msg;

END WHILE myloop;
END//

call while_loop(2);