#select max(salary) from employee where salary not in (select max(salary) from employee);
select max(salary) from employee where salary not in (select max(salary) from employee);
select salary from employee where fname in("john","franklin","alica");
#extract odd id from table
 
 select substr(fname,-2,-2),fname from employee;
 select substr(fname,1,1),fname from employee;
 select substr(fname,-1,-1),fname from employee;
 select substr(fname,2,2),fname from employee;
 #where substr(name,1,1) in ('a','e','i','o','u,)
select fname  from employee where substr(fname,-1,1) in ('a','e','i','o','u');


