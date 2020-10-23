create database company;
use company;
create table Department(
department_id int,
department_name varchar(100),
city varchar(100),
salary int,
primary key (department_id));


desc Department;
insert into Department values(1,'Hardware','Banglore',80000);
insert into Department values(2,'Software','Mysuru',300000);
insert into Department values(3,'Tester','Manglore',40000);
insert into Department values(4,'Developer','Hubli',60000);

select* from Department;

create table Employees(
employees_id int,
employess_name varchar(100),
department_id int,
mail_id varchar(100),
employee_salary int,
primary key (employees_id),
foreign key (department_id) references Department (department_id)
);
desc Employees;
insert into Employees values(101,'Darshan',2,'darsh@gmail.com',15000);
insert into Employees values(102,'Jagga',3,'jagga@gmail.com',150000);
insert into Employees values(103,'Arun',1,'arun@gmail.com',17000);
insert into Employees values(104,'Nikhil',2,'nikki@gmail.com',19000);
select * from Employees;
/* (1).inner join */

/* a) Inner join Department and Employees based on department_id */
select department_name, employess_name from Department inner join Employees on Department.department_id = Employees.department_id;

/* b) Inner join Department and Employees based on department_id */
select department_name, employess_name from Department inner join Employees on Department.department_id = Employees.department_id and Department.department_id like 'U%';

/* c) Inner join Department and Employee based on department_id >2 */
select department_name, employess_name from Department inner join Employees on Department.department_id = Employees.department_id and Department.department_id >2;

/* (2).Left join */

/* a) Left join Department and Employees based on department_id */
select department_name, employess_name from Department left join Employees on Department.department_id = Employees.department_id;

/* b) Left join Department and Employees based on department_id */
select department_name, employess_name from Department left join Employees on Department.department_id = Employees.department_id and Department.department_id like 'U%';

/* c) Left join Department and Employee based on department_id >2 */
select department_name, employess_name from Department left join Employees on Department.department_id = Employees.department_id and Department.department_id >2;


/* (3). Right outer Joins */

/* a) Right outer joins Department and Employees based on department_id */
select department_name, employess_name from Department right join Employees on Department.department_id = Employees.department_id;

/* b) Right outer joins Department and Employees based on department_id */
select department_name, employess_name from Department right join Employees on Department.department_id = Employees.department_id and Department.department_id like 'U%';
 
/* c) Left join Department and Employee based on department_id >2 */
select department_name, employess_name from Department right join Employees on Department.department_id = Employees.department_id and Department.department_id >2;

