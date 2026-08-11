-- constraints- the rules that has to be applied to a specific problem is called constraint
-- types of constraints
-- primary key, foreign key, unique, not NULL, check, default, 
-- primary key -> it can exist only once in a specific table and it also unique, cannot be NULL. 
use companydatabase;
create table employees(Employee_ID int constraint PK_constraint primary key, email varchar(50) unique);
insert into employees
values (101,'rajesh@gmail.com'),
       (102,'rajesh1@gmail.com');
select * from employees;
-- column name is salary and type will be decimal
Alter table employees
add Salary decimal(10,2);

Alter table employees
add constraint check_salary_constraint
check (salary>=10000);

-- 50k 9k

update employees
set Salary=50000
where employee_id=101;


update employees
set Salary=90000
where employee_id=102;

Alter table employees
add gender varchar(1);

Alter table employees
add constraint check_gender
check (gender in ('M','F'));

insert into employees 
values(103,'neha@gmail.com',20000,'F');


insert into employees 
values(105,'neopath1@gmail.com',35000,'J');


insert into employees 
values(106,'sheelaj1@gmail.com',12000,'M');

-- since sql is not case sensitive it is allowing constraints to have 'm','f'. 

select * from employees_Data;

Alter table employees_data
add constraint foreignkeye
foreign key (employee_id)
references employees(employee_id);

alter table employees_data
alter column employee_id int;

insert into employees_data(employee_id)
values(109);