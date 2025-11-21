create database pw;
use pw;
create table Courses(
Course_id char(10),
Course_name Varchar(30),
Mode_of_delivery Varchar(10),
Students_intake int,
Faculty Varchar(30));

drop table Courses;

create table Courses(
Course_id char(10),
Course_name Varchar(30),
Mode_of_delivery Varchar(10),
Students_intake int,
Faculty Varchar(30));

Alter table Courses change column Mode_of_delivery Delivery_mode Varchar(10);

select * from Courses;
Alter table Courses add column Location Varchar(20);
select * from Courses;

Alter Table Courses drop column Location;

Alter table Courses rename to PW_Courses;

select * from PW_Courses;
USE PW_Courses;
INSERT into PW_Courses values
("PW101", "Full Stack", "Recorded", 120, "Vijay"),
("PW102", "DS", "live", 150, "Ajay"),
("PW103", "Enhnieer", "Hybrid", 300, "Sanjay");

# USE pw;
# select * from PW_Courses;
INSERT INTO PW_Courses
values("PW0000", "AI", "Practical", 500, "Sand")

--UPDATE PW_Courses
--SET Delivery_mode = 'Full Stack'
--WHERE Course_id = 'PW102';
use pw;
select * from Tables;

--------------------------------------------------------------------
-----Limit & OffSet------
--------------------------------------------------------------------
Create DataBase wroldwide;
use wroldwide;
select * from data;

-----------------------------------------------------
# selecting top 5 rows with highest population
----------------------------------------------------

select * from data
order by Population desc
limit 5;

----------------------------------------------------
# SELECT country with highest GDP
----------------------------------------------------
select Country, Region, SurfaceArea, population, GDP, Latitude from data
ORDER BY GDP desc
LIMIT 1;

-------------------------------------------------------
-- Display the country with GDP in rank of 11 to 15
-------------------------------------------------------
select Country, Region, SurfaceArea, population, GDP, Latitude from data
ORDER BY GDP desc
LIMIT 5
OFFSET 10;

--------------------------------------------------------------
# WHERE caluse
----------------------------------------------------------
USE world;
select * from city;

select * from city
Where population > 1000000;

select * from country;
select name, Continent, LifeExpectancy
from country
WHERE LifeExpectancy <= 70
order by LifeExpectancy;

--------------------------------------------------------
# LOGICAL OPERATOR AND / OR 
-------------------------------------------------------
# Display the data of all asian countries where populaton > 10 Million
----------------------------------------------------------
select name, Continent, LifeExpectancy, Population
from country
WHERE Continent = "Asia"
AND Population > 10000000;

----------------------------------------------------------
# DIsplay the data of all countries of cojtients Asia, Europe, Africa
# Using IN
----------------------------------------------------------------
select name, Continent, LifeExpectancy, Population
from country
WHERE Continent in ('Asia', 'Europe', 'Population');

----------------------------------------------------------------
# In Between Operator
# Show all countries with life expectancy begtween 40 to 60
--------------------------------------------------------------
select name, Continent, region, surfaceArea, IndepYear, Population, LifeExpectancy from country
where LifeExpectancy between 40 and 60
ORDER by LifeExpectancy;


















