create database fox
use fox
create table employee (e_id int primary key, firstname varchar (50),lastname varchar (50))
insert into employee values (004,'ramji','jadhava')
create table customers (c_id int primary key,firstname varchar (50),lastname varchar (50))
insert into customers values (400,'alex','dbds')
select firstname,lastname from employee union select firstname,lastname from customers
select firstname,lastname from employee union all select firstname,lastname from customers
select firstname,lastname from employee intersect select firstname,lastname from customers
select firstname,lastname from employee except select firstname,lastname from customers
create table foxfire (e_id int primary key,firstname varchar (50),lastname varchar(50),dep_id int)
insert into foxfire values (1,'john','doe',1),(2,'jane','smithh',2),(3,'sam','brown',3),(4,'anna','white',1),(5,'luke','green',2)
SUB QUERY IN UPDATE EAXAMPLE
update foxfire set dep_id=99
where dep_id not in (select dep_id fromfoxfire where dep_id in (1,2))
select * from foxfire

 SUB QUERY IN SELECT STATEMENT WITH NOT IN 

CREATE TABLE DEPARTMENT (DEP_ID INT PRIMARY KEY ,DEP_NAME VARCHAR (50))
INSERT INTO DEPARTMENT VALUES (1,'HR'),(2,'IT'),(3,'SALES')
SELECT E_ID,FIRSTNAME,LASTNAME,DEP_ID FROM FOXFIRE 
WHERE DEP_ID NOT IN (SELECT DEP_ID FROM DEPARTMENT WHERE DEP_NAME IN ('HR','IT'))

INSERT INTO DEPARTMENT (DEP_ID,DEP_NAME)VALUES(00,'UNASSIGNES')
SELECT *FROM DEPARTMENT

SELECT E_ID,FIRSTNAME,LASTNAME,DEP_ID FROM FOXFIRE 
WHERE DEP_ID NOT IN (SELECT DEP_ID FROM DEPARTMENT WHERE DEP_NAME IN ('HR','IT','UNASSIGNED'))


UPDATE FOXFIRE SET DEP_ID=102
WHERE NOT EXISTS (SELECT 1 FROM DEPARTMENT
WHERE DEPARTMENT.DEP_ID=FOXFIRE.DEP_ID AND DEP_NAME IN ('HR','IT'))
SELECT @@VERSION
SELECT @@IDENTITY
SELECT CURRENT_USER
SELECT SESSION_USER
SELECT USER_NAME()
EXEC SP_RENAME 'FOXFIRE','FIREFOX'
SELECT *FROM FIREFOX

