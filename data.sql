create schema company ;

use company ;
create table employee(

 fname varchar(30),   
 minit char(1),
 lname varchar(30),
 ssn char(9),  
 bdate date,
 address varchar(50),
 sex char(1),
 salary float(10, 2),
 super_ssn char(9),
 dno char(3)) ;

insert into employee values
('John','B','Smith','123456789','1965-01-09','731 Fondren, Houston, TX','M',30000,'333445555',5), 
('Franklin','T','Wong','333445555','1955-12-08','638 Voss, Houston, TX','M',40000,'888665555',5), 
('Alicia','J','Zelaya','999887777','1968-01-09','3321 Castle, Spring, TX','F',25000,'987654321',4), 
('Jennifer','S','Wallace','987654321','1941-06-20','291 Berry, Bellaire, TX','F',43000,'888665555',4), 
('Ramesh','K','Narayan','666884444','1962-09-15','975 Fire Oak, Humble, TX','M',38000,'333445555',5), 
('Joyce','A','English','453453453','1972-07-31','5631 Rice, Houston, TX','F',25000,'333445555',5), 
('Ahmad','V','Jabbar','987987987','1969-03-29','980 Dallas, Houston, TX','M',25000,'987654321',4), 
('James','E','Borg','888665555','1937-11-10','450 Stone, Houston, TX','M',55000, NULL,1) ;

create table department(
 dname varchar(20),   
 dnumber varchar(2),
 mgr_ssn char(9),
 mgr_start_date date ) ;

insert into department values 
('research','5','333445555','1988-05-22'), 
('administration','4','987654321','1995-01-01'), 
('headquaters','1','888665555','1981-06-19') ;


create table dept_locations( 
dnumber int, 
dlocation varchar(20)); 

insert into dept_locations values 
(1, 'Houston'), 
(4, 'Stafford'), 
(5, 'Bellaire'), 
(5, 'Sugarland'), 
(5, 'Houston');

create table works_on( 
essn char(9), 
pno int, 
hours float(4,2));

insert into works_on (essn, pno, hours) values 
('123456789', 1, 32.5), 
('123456789', 2, 7.5), 
('666884444', 3, 40.0), 
('453453453', 1, 20.0), 
('453453453', 2, 20.0), 
('333445555', 2, 10.0), 
('333445555', 3, 10.0), 
('333445555', 10, 10.0), 
('333445555', 20, 10.0), 
('999887777', 30, 30.0), 
('999887777', 10, 10.0), 
('987987987', 10, 35.0), 
('987987987', 30, 5.0), 
('987654321', 30, 20.0), 
('987654321', 20, 15.0), 
('888665555', 20, NULL);


create table project( 
pname varchar(30), 
pnumber int, 
plocation varchar(30), 
dnum int); 

insert into project(pname,pnumber,plocation,dnum) values 
('ProductX', 1, 'Bellaire', 5), 
('ProductY', 2, 'Sugarland', 5), 
('ProductZ', 3, 'Houston', 5), 
('Computerization', 10, 'Stafford', 4), 
('Reorganization', 20, 'Houston', 1), 
('Newbenefits', 30, 'Stafford', 4);

create table dependent( 
essn char(9), 
dependent_name varchar(30), 
sex char(1), 
bdate date, 
relationship varchar(20)); 

insert into dependent(essn,dependent_name,sex,bdate,relationship) values 
('333445555', 'Alice', 'F', '1986-04-05', 'Daughter'), 
('333445555', 'Theodore', 'M', '1983-10-25', 'Son'), 
('333445555', 'Joy', 'F', '1958-05-03', 'Spouse'), 
('987654321', 'Abner', 'M', '1942-02-28', 'Spouse'),
('123456789', 'Michael', 'M', '1988-01-04', 'Son'), 
('123456789', 'Alice', 'F', '1988-12-30', 'Daughter'), 
('123456789', 'Elizabeth', 'F', '1967-05-05', 'Spouse');





select * from employee where salary >= 30000;
select * from employee where salary <= 30000;
select * from employee where salary = 30000;
select * from employee where salary <> 30000;

select * from employee where salary between 30000 and 40000;
select * from employee where salary >= 30000 and salary <=40000;

select * from employee where fname like "%a";

select * from employee where fname like "a%";

select *from employee where salary >= 40000;

select essn,relationship from dependent where essn like "333445555" ;

select *from employee where salary<=40000 and sex = "F" ;
select * from employee where salary>= 40000 and sex = "F" ;

select * from employe where salary > 40000 and sex= 'm' or salary < 40000 and sex='f';
 select * from project where plocation in ('houston','stafford');
 # 13 display the name of employee who live in houston
select * from employee where address like '%houston%'; 

# 14 Display the full name of all employee in one go
select concat(fname, '' , lname) as full_name from employee;
# 15.a) Calculate total salary of employees.
select sum(salary) from employee;
# 15.a) Calculate average salary of employees.
select avg(salary) from employee;
# 15.a) Calculate minimum salary of employees.
select min(salary) from employee;
# 15.a) Calculate maximum salary of employees.
select max(salary) from employee;
# 16. Find no. of employees in organization.
select count(*) from employee;

# 17. Find no. of employees who have dependents. ( use distinct for remove duplicate)
select count(distinct fname) from employee;
# 15.a) Calculate average salary of employees.
# 15.a) Calculate minimum salary of employees.
# 15.a) Calculate maximum salary of employees.
# 16. Find no. of employees in organization.
# 17. Find no. of employees who have dependents. 
#( use distinct for remove duplicate)
# 18. Display the employee details who does not 
#have supervisor.
select * from employee where super_ssn is null;
 
# 19. Display the ssn of manager and the year
# in which the manager was appointed. 
#(use year() for find the year in column)
select mgr_ssn,year(mgr_start_date) from department;
select month(mgr_start_date) from department;
select day(mgr_start_date) as 'day' from department;

# using day for see the date in DD/MM/YY
# using month for see the date in DD/MM/YY
# using year for see the date in DD/MM/YY

# 20. Display the ssn, fname and salary of 
# employees sorted by their salary in descending mode.
select ssn, fname,salary from employee order by salary desc; # for ascending order
select ssn, fname,salary from employee order by salary desc; # for descending order


# 21 display all the null values in the table
select * from employee where super_ssn is null;
# 22. Sort the works_on table based on Pno  Hours.
select *  from works_on order by pno and hours;
# 23 calculate the average salary of employee department-wise
select avg(salary), dno from employee group by dno;

# 23. Display the number of male employees in each department.
select count(sex)as male,dno from employee where sex like 'm' group by dno;

# 24. Among the people who draw at least 30000 salary gender-wise?
select fname,sex,salary from employee where salary >=30000 order by sex;

# using round(xyz,2) where 2 stand for decimal digit 

# 25. Display the essn of employees who have worked between 25 and 50 hours.
select essn,sum(hours) from works_on group by essn having sum(hours) between 25 and 50;


# 26. Display the Dno of those departments those have at
# least 3 employees.
select count(*) as employee,dno from employee group by dno having count(*) >=3;


# 27. Display the fname and salary of employees whose salary is more than the 
# average salary of all the employees.
select avg(salary) from employee;
select salary,fname from employee where salary > (select avg(salary) from employee);




# 28. Display the fname of employees working in the Research department.
select fname,dname from employee as e join department as d on e.dno=d.dnumber where dname like "research";


# 29. Which department has the most number of employees?
 
#30 display full name of employees working in 
# research department

# 31. Print full name of all employees who are 
# working on Product 'Z'.
# print the fullname and dept name of all 
# the employee working on product z



# 29. Which department has the most number of employees?
 
#30 display full name of employees working in 
# research department

# 31. Print full name of all employees who are 
# working on Product 'Z'.
# print the fullname and dept name of all 
# the employee working on product z



# 29. Which department has the most number of employees?

 
#30 display full name of employees working in 
# research department

# 31. Print full name of all employees who are 
# working on Product 'Z'._namea
select concat(fname, ' ' ,lname) as firstname,pname from employee as e join project as p on e.dno=p.dnum
where pname like "productZ" ;

select fname,pname,hours from employee as e join project as p on e.dno=p.dnum
join works_on as w
on e.ssn=w.essn
where pname like "productZ";

select salary,
case
when salary <=25000 then "low"
when salary between 25000 and 35000 then "middle"
when salary >=35000 then "high"
else "no salary"
end as "condition" from employee;



# print the fullname and dept name of all 
# the employee working on product z



# 29. Which department has the most number of employees?
 
#30 display full name of employees working in 
# research department


#extract the fisrt name , relationship, dname from the table


select fname,relationship,dname from employee as e 
join dependent as d on e.ssn = d.essn
join department as dep on e.dno = dep.dnumber;

select salary,salary * 2 as double_salary from employee;

select salary,salary * 2 as double_salary,
case
double_salary <=50000 then "low"
when double_salary 








