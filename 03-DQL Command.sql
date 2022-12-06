# DQL COMMAND
#SELECT
CREATE DATABASE practice;
CREATE TABLE Authors(AuthorId INTEGER primary key, 
                                Name VARCHAR(70));

INSERT INTO authors VALUES(1,'J K Rowling');
INSERT INTO authors VALUES(2,'Thomas Hardy');
INSERT INTO authors VALUES(3,'Oscar Wilde');
INSERT INTO authors VALUES(4,'Sidney Sheldon');
INSERT INTO authors VALUES(5,'Alistair MacLean');
INSERT INTO authors VALUES(6,'Jane Austen');
INSERT INTO authors VALUES(7,'Chetan Bhagat');
INSERT INTO authors VALUES(8,'Oscar Wilde');


CREATE TABLE `myemp` (
  `EMP_ID` decimal(6,0) NOT NULL DEFAULT 0,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `HIRE_DATE` date NOT NULL,
  `JOB_ID` varchar(10) NOT NULL,
  `SALARY` decimal(8,2) DEFAULT NULL,
  `COMMISSION_PCT` decimal(2,2) DEFAULT NULL,
  `MGR_ID` decimal(6,0) DEFAULT NULL,
  `DEP_ID` decimal(4,0) DEFAULT NULL
) ;

INSERT INTO `myemp` VALUES (100,'Steven','King','SKING','1998-06-17','AD_PRES',24000.00,0.00,0,90),
(101,'Neena','Kochhar','NKOCHHAR','1987-06-18','AD_VP',17000.00,0.00,100,90),
(102,'Lex','De Haan','LDEHAAN','1987-06-19','AD_VP',17000.00,0.00,100,90),
(103,'Alexander','Hunold','AHUNOLD','1976-06-20','IT_PROG',9000.00,0.00,102,60),
(104,'Bruce','Ernst','BERNST','1987-06-21','IT_PROG',6000.00,0.00,103,60),
(105,'David','Austin','DAUSTIN','1987-06-22','IT_PROG',4800.00,0.00,103,60),
(106,'Valli','Pataballa','VPATABAL','1980-06-23','IT_PROG',4800.00,0.00,103,60),
(107,'Diana','Lorentz','DLORENTZ','1987-06-24','IT_PROG',4200.00,0.00,103,60),
(108,'Nancy','Greenberg','NGREENBE','1987-06-25','FI_MGR',12000.00,0.00,101,100),
(109,'Daniel','Faviet','DFAVIET','1992-06-26','FI_ACCOUNT',9000.00,0.00,108,100),
(110,'John','Chen','JCHEN','1987-06-27','FI_ACCOUNT',8200.00,0.00,108,100),
(111,'Ismael','Sciarra','ISCIARRA','1987-06-28','FI_ACCOUNT',7700.00,0.00,108,100),
(112,'Jose Manuel','Urman','JMURMAN','1981-06-29','FI_ACCOUNT',7800.00,0.00,108,100),
(113,'Luis','Popp','LPOPP','1987-06-30','FI_ACCOUNT',6900.00,0.00,108,100),
(114,'Den','Raphaely','DRAPHEAL','1987-07-01','PU_MAN',11000.00,0.00,100,30),
(115,'Alexander','Khoo','AKHOO','1983-07-02','PU_CLERK',3100.00,0.00,114,30),
(116,'Shelli','Baida','SBAIDA','1987-07-03','PU_CLERK',2900.00,0.00,114,30),
(117,'Sigal','Tobias','STOBIAS','1987-07-04','PU_CLERK',2800.00,0.00,114,30),
(118,'Guy','Himuro','GHIMURO','1995-07-05','PU_CLERK',2600.00,0.00,114,30),
(119,'Karen','Colmenares','KCOLMENA','1987-07-06','PU_CLERK',2500.00,0.00,114,30),
(120,'Matthew','Weiss','MWEISS','1987-07-07','ST_MAN',8000.00,0.00,100,50),
(121,'Adam','Fripp','AFRIPP','1990-07-08','ST_MAN',8200.00,0.00,100,50),
(122,'Payam','Kaufling','PKAUFLIN','1987-07-09','ST_MAN',7900.00,0.00,100,50),
(123,'Shanta','Vollman','SVOLLMAN','1987-07-10','ST_MAN',6500.00,0.00,100,50),
(124,'Kevin','Mourgos','KMOURGOS','1997-07-11','ST_MAN',5800.00,0.00,100,50),
(125,'Julia','Nayer','JNAYER','1987-07-12','ST_CLERK',3200.00,0.00,120,50),
(126,'Irene','Mikkilineni','IMIKKILI','1987-07-13','ST_CLERK',2700.00,0.00,120,50),
(127,'James','Landry','JLANDRY','1978-07-14','ST_CLERK',2400.00,0.00,120,50),
(128,'Steven','Markle','SMARKLE','1987-07-15','ST_CLERK',2200.00,0.00,120,50),
(129,'Laura','Bissot','LBISSOT','1987-07-16','ST_CLERK',3300.00,0.00,121,50),
(130,'Mozhe','Atkinson','MATKINSO','1983-07-17','ST_CLERK',2800.00,0.00,121,50);

CREATE TABLE `products` (
  `pcode` varchar(15) DEFAULT NULL,
  `pname` varchar(70) DEFAULT NULL,
  `productLine` varchar(50) NOT NULL,
  `pvendor` varchar(50) DEFAULT NULL,
  `qtyInStock` smallint(6) DEFAULT NULL,
  `MRP` decimal(7,2) DEFAULT NULL
) ;
INSERT INTO `products` VALUES 
('S10_1','1969 Harley Davidson Ultimate Chopper','Motorcycles','Min Lin Diecast',7933,95.70),
('S10_2','1952 Alpine Renault 1300','Classic Cars','Classic Metal Creations',7305,214.30),
('S10_3','1996 Moto Guzzi 1100i','Motorcycles','Highway 66 Mini Classics',6625,118.94),
('S10_4','2003 Harley-Davidson Eagle Drag Bike','Motorcycles','Red Start Diecast',5582,193.66),
('S10_5','1972 Alfa Romeo GTA','Classic Cars','Motor City Art Classics',3252,136.00),
('S10_6','1962 LanciaA Delta 16V','Classic Cars','Second Gear Diecast',6791,147.74),
('S12_7','1968 Ford Mustang','Classic Cars','Autoart Studio Design',68,194.57),
('S12_8','1958 Setra Bus','Trucks and Buses','Welly Diecast Productions',1579,136.67),
('S12_9','2002 Suzuki XREO','Motorcycles','Unimax Art Galleries',9997,150.62),
('S12_10','1969 Corvair Monza','Classic Cars','Welly Diecast Productions',6906,151.08);

# view All tables present in databse-
SHOW  TABLES;

#For view all rows and columns-
SELECT *FROM myemp;

#For view selected no.of rows-
SELECT * FROM myemp LIMIT 5;

#for view selected column-
SELECT EMP_ID,FIRST_NAME,LAST_NAME FROM myemp LIMIT 10;

# for view derived column -
SELECT EMP_ID,SALARY,(salary*0.2)As BONUS,(salary+salary*0.2 ) As total_salary FROM myemp;


