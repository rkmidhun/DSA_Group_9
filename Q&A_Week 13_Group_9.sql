#creating datatbase
create database employee;

#showing databases

show databases;

#selecting a database
use employee;


#creating tables 
create table empl(
emp_id varchar(10) primary key,
emp_name char(20),
gender char(8),
department char(20),
salary int(8),
dob date,
doj date);



#showing the table
describe empl;

select * from empl;

#inserting values into the table
insert into empl(emp_id,emp_name,gender,department,salary,dob,doj)
values('CP0123', 'AnnMery','F','HR',45000,STR_TO_DATE('10/Oct/1989', '%d/%M/%Y'),STR_TO_DATE('1/Jan/2018', '%d/%M/%Y')),
      ('CP0087', 'Felix','M','Finance',48000,STR_TO_DATE('12/Apr/1981', '%d/%M/%Y'),STR_TO_DATE('10/Dec/2000', '%d/%M/%Y')),
      ('CP0197', 'Merlin','M','CEO',80000,STR_TO_DATE('01/Mar/1990', '%d/%M/%Y'),STR_TO_DATE('10/May/2011', '%d/%M/%Y')),
      ('CP0213', 'Philip','M','Retail',47000,STR_TO_DATE('01/Apr/1991', '%d/%M/%Y'),STR_TO_DATE('11/June/2012', '%d/%M/%Y')),
	  ('CP0243', 'Michael','M','Retail',40000,STR_TO_DATE('01/Dec/1992', '%d/%M/%Y'),STR_TO_DATE('30/May/2016', '%d/%M/%Y')),
	  ('CP0289', 'Susan','F','Retail',40000,STR_TO_DATE('01/Jan/1991', '%d/%M/%Y'),STR_TO_DATE('01/Apr/2016', '%d/%M/%Y')),
	  ('CP0298', 'Abram','M','Relations',30000,STR_TO_DATE('17/Apr/1994', '%d/%M/%Y'),STR_TO_DATE('06/Oct/2016', '%d/%M/%Y')),
	  ('CP0300', 'Alia','F','Relations',30000,STR_TO_DATE('17/Oct/1995', '%d/%M/%Y'),STR_TO_DATE('06/Oct/2016', '%d/%M/%Y')),
	  ('CP0321', 'Raichal','F','Marketing',34000,STR_TO_DATE('09/Oct/1990', '%d/%M/%Y'),STR_TO_DATE('22/Oct/2016', '%d/%M/%Y')),
	  ('CP0276', 'Thomas','M','Marketing',44000,STR_TO_DATE('19/Nov/1983', '%d/%M/%Y'),STR_TO_DATE('22/Oct/2018', '%d/%M/%Y'));
	  
#retrieving all values from the table empl
select * from empl;

#selecting employees from Marketing

select * from empl where department='Marketing';

#selecting employees from Retail
select * from empl where department='Retail';

#selecting employees from HR
select * from empl where department='HR';


#Write SQL queries to create a table only containing female employees.

create table F_emp as (select * from empl where gender='F');
describe F_emp;

select * from F_emp;

#Write SQL queries to display the Maximum,Minimum and Average Salary.

#maximum salary

select max(salary) from empl;

#Minimum Salary
select min(salary) from empl;

#Average Salary
select avg(salary) from empl;


#Write SQL query to display the employee details based on thefollowing conditions.
#1 Male employees having salary greater than 40000

select * from empl where salary > 40000 And gender="M";

#Female employees having salary less than 45000
select * from empl where salary < 45000 And gender="F";

#Employee having salary between 30000 and 60000 andworking in Marketing or Retail department.
select * from empl where (salary > 30000 and salary < 60000) and (department='Marketing' or department='Retail');