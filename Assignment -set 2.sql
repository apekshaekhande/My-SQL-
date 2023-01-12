#SET-2
USE Assignment;
#1. select all employees in department 10 whose salary is greater than 3000. [table: employee]
#2. The grading of students based on the marks they have obtained is done as follows:


#Q1 select all employees in department 10 whose salary is greater than 3000. [table: employee]

select * from employee where deptno=10 and salary>3000;

-----------------------------------------------------------------------------------------------------------------------------------------
/*Q2 The grading of students based on the marks they have obtained is done as follows:

40 to 50 -> Second Class
50 to 60 -> First Class
60 to 80 -> First Class
80 to 100 -> Distinctions */

set sql_safe_updates=0;
Alter table students add column Grading varchar(30);
update students set Grading= case
when marks>80  then "Distinctions"
when marks>60  then "First_Class"
when marks>50 then "Second_class"
else "Third_class"
end;

# a) How many students have graduated with first class?
select count(id) from students  where grading ="First_class";

# b) How many students have obtained distinction? [table: students]
select count(id) from students where grading="Distinctions";

-----------------------------------------------------------------------------------------------------------------------------------------
# Q3 Get a list of city names from station with even ID numbers only. Exclude duplicates from your answer.[table: station]
select distinct(id),city from station where id%2=0;

-----------------------------------------------------------------------------------------------------------------------------------------
/* Q4 Find the difference between the total number of city entries in the table and the number of distinct city entries in the table. 
In other words, if N is the number of city entries in station, and N1 is the number of distinct city names in station, 
write a query to find the value of N-N1 from station.[table: station]  */

SELECT COUNT(city) - COUNT(DISTINCT(city)) AS Difference FROM station;

-----------------------------------------------------------------------------------------------------------------------------------------
/*Q5 Answer the following
a. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates. [Hint: Use RIGHT() / LEFT() methods ]

b. Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

c. Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

d. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates. [table: station] */

#a)
select distinct(city) from station where left(city,1) in("a","e","i","o","u");
#b)
select distinct(city)from station where left(city,1)in("a","e","i","o","u") And right(city,1) in ("a","e","i","o","u");
#c)
select distinct(city) from station where right(city,1) in("a","e","i","o","u");
#d)
select distinct(city)from station where left(city,1)not in("a","e","i","o","u") And right(city,1)not in ("a","e","i","o","u");

--------------------------------------------------------------------------------------------------------------------------------------------
/*Q6 Write a query that prints a list of employee names having a salary greater than $2000 per month who have been employed for less than 36 months.
 Sort your result by descending order of salary. [table: emp] */

select concat(first_name,last_name) AS List_of_employee,hire_date,salary 
from emp 
where salary>2000  and (timestampdiff(month,hire_date,now()))<36
order by salary desc;
-------------------------------------------------------------------------------------------------------------------------------------------
#Q7 How much money does the company spend every month on salaries for each department? [table: employee]
select deptno,sum(salary) as Total_salary from employee
group by deptno;

-------------------------------------------------------------------------------------------------------------------------------------------

#Q8 . How many cities in the CITY table have a Population larger than 100000. [table: city]
select distinct(district) as city from city where population>100000;

-------------------------------------------------------------------------------------------------------------------------------------------

#Q9 What is the total population of California? [table: city]
select sum(population) from city where district="California";

-------------------------------------------------------------------------------------------------------------------------------------------

#Q10 What is the average population of the districts in each country? [table: city]
select district,avg(population) As avg_population_each_country from city 
group by District
order by population desc;
-------------------------------------------------------------------------------------------------------------------------------------------

#Q11 Find the ordernumber, status, customernumber, customername and comments for all orders that are ‘Disputed=  [table: orders, customers]

Select ordernumber, status, customernumber,customername ,comments 
from orders inner join customers
using(customernumber)
where status ="Disputed";








