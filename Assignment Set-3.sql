# Set-3
USE Assignment;
SET GLOBAL log_bin_trust_function_creators=1;

#Q1)
/* Write a stored procedure that accepts the month and year as inputs and prints the ordernumber
 , orderdate and status of the orders placed in that month.*/ 


DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `order_status`(yyyy integer,mm integer)
BEGIN
SELECT ordernumber,orderdate, status from orders where
year(order_date)=yyyy and
month(order_date)=mm;
END //

call order_status(2005, 11);

----------------------------------------------------------------------------------------------------------------------------------------
/* Q2 a)
 Write function that takes the customernumber as input and returns the purchase_status based on the following criteria . [table:Payments] */

DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `purchase_status`(
cust_num int
) RETURNS varchar(20) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE P_Status VARCHAR(20);
    DECLARE Amt int;
    SET Amt = (select sum(Amount) from Payments where Customernumber = cust_num);

    IF Amt <25000 THEN
        SET p_status = 'Silver';
    ELSEIF (Amt >= 25000 AND 
            Amt <= 50000) THEN
        SET p_status = 'gold';
    ELSEIF Amt < 25000 THEN
        SET p_status = 'Platinum';
    END IF;
    RETURN (p_status);
    End //

    
select 103 as cust_num,purchase_status(103) as purc_status;


/* Q2 b)
    Write a query that displays customerNumber, customername and purchase_status from customers table. */


SELECT customernumber,customername,purchase_status(customernumber)  from customers ;

----------------------------------------------------------------------------------------------------------------------------------------

/* Q3 
 Replicate the functionality of 'on delete cascade' and 'on update cascade' using triggers on movies and rentals tables.
 Note: Both tables - movies and rentals - don't have primary or foreign keys. Use only triggers to implement. */


create table movies (id integer, title varchar(50), category varchar(25));

insert into movies values(1,	"ASSASSIN'S CREED: EMBERS",	'Animations'),
(2,	'Real Steel',	'Animations'),
(3,	'Alvin and the Chipmunks',	'Animations'),
(4,	'The Adventures of Tin Tin',	'Animations'),
(5,	'Safe', 	'Action'),
(6,	'Safe House',	'Action'),
(7,	'GIA',	'18+'),
(8,	'Deadline 2009',	'18+'),
(9,	'The Dirty Picture',	'18+'),
(10,	'Marley and me',	'Romance');


create table rentals(memid integer, first_name varchar(25), last_name varchar(25), movieid integer);

insert into rentals values(1,'Alicia','Alarcon', 1),
(2,'Don','Draper', 2),
(3,'Lizzie','Moss', 5),
(4,'Eldon','Chance', 8),
(5,'Jenny','Patterson', 10),
(6,'Craig','Daniels', null),
(7,'Denny', 'Peters',null),
(8,'Patty','Pattinson',null);

DELIMITER //
CREATE TRIGGER AFTER_UPDATE
AFTER UPDATE 
ON MOVIES FOR EACH ROW
BEGIN
	UPDATE Rentals SET MOVIEID=NEW.ID
    WHERE MOVIEID =old.ID;
END//

SET SQL_SAFE_UPDATES =0;

UPDATE MOVIES 
SET ID=12
WHERE ID=8;

DROP TRIGGER AFTER_UPDATE;

DELIMITER //
CREATE TRIGGER before_delete
BEFORE DELETE
ON Movies FOR EACH ROW
BEGIN
	DELETE FROM RENTALS 
    WHERE MOVIEID= old.id;
END //
DROP TRIGGER before_DELETE;
DELETE FROM MOVIES WHERE ID=1;
DELETE FROM MOVIES WHERE ID=5;

------------------------------------------------------------------------------------------------------------------------------------------
/* Q4)  Select the first name of the employee who gets the third highest salary. [table: employee] */

SELECT fname,salary,nth_value(fname,3) over (order by salary desc) As third_high_salary from employee Limit 3;

------------------------------------------------------------------------------------------------------------------------------------------
/* Q5) Assign a rank to each employee  based on their salary. The person having the highest salary has rank 1. [table: employee] */

SELECT fname,salary,dense_rank()over(order by salary desc) As salary_rank from employee ;
