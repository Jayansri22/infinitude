create schema kurnool;
use kurnool;

create  table class(
fname varchar(99),
lname varchar(99),
age int(2),
id float(10),
email varchar(99));

insert into class values
("max", "kk", "25", "123456789", "maxkk@gmail.com"),
("sam", "ss", "29", "874563219", "samss@gmail.com");

select*from class table;


