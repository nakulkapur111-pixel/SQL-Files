create database testsql;
--database is repository of multiples tables
--types of commands in sql
--data types in sql
--numeric (int (1-infinity),smallint (small in type 2-3 dig), bigint (big digits are stored here),decimal(how many digits, number of decimal),float(gives approx values to decimal)
--string data types: char(number of characters, occupies the number of bytes given, defining the maximum limit of characters, eg: m/f gender column), varchar(n, use only the bytes which are required for a string, eg: name), text(if we don't know the number of characters, doesn't include any number of characters  eg: address)
-- date time data types: date, time, datetime, timestamp
-- boolean: (true, false)
-- binary: (0,1)
--ddl data definition language ( data defining and modifying in a database or table)
--create, alter, drop, truncate,rename(Mysql) and exec (SSMS)

create table Employees_Data(Employee_ID smallint, Employee_Name varchar(50), Employee_Address text, Employee_DOJ date);
create table Employees_Comp(Employee_ID smallint, Employee_Salary bigint);
use testsql;

--make changes in the table (introducing multiple column names) after creation, we use alter
alter table Employees_Data
add Email varchar (100);

-- remove a table through drop
drop table Employees_Comp;

--changing the column dtype through alter
alter table Employees_Comp 
alter column Employee_Salary decimal (10,2);

-- only the data gets deleted, the table doesn't get deleted, and the structure stays intact through truncate
truncate table Employees_Comp;

-- renaming a column
exec sp_rename
'Employees_Data.Email','Email_Address','COLUMN';

-- renaming a table name 
exec sp_rename 
'Employees_Comp','Employees_Salary';

-- renaming a database
Alter database testsql
modify name=companydatabase;

-- DML data manipulation language
-- insert, delete, update

insert into Employees_Data(Employee_ID, Employee_Name, Employee_Address, Employee_DOJ, Email_Address)
values (1001,'Rahul','50-Ashok Nagar, New Delhi','10-05-2021','rahul@hotmail.com'), 
	   (1002,'Stuti','10-Malvi Nagar, New Delhi','12-04-2023','stuti11@gmail.com');

insert into Employees_Data
values(1003, 'Aman Gupta', '22 Sector 5, Gurgaon, HR', '2019-11-01', 'aman.gupta@example.com'),
 (1004, 'Neha Singh', '7 MG Road, Bangalore, KA', '2020-01-15', 'neha.singh@example.com'),
 (1005, 'Vikram Patel', '14 CBlock, Ahmedabad, GJ', '2018-06-20', 'vikram.patel@example.com'),
 (1006, 'Priya Nair', '3 Marine Drive, Mumbai, MH', '2017-09-25', 'priya.nair@example.com'),
 (1007, 'Suresh Kumar', '88 Park Street, Kolkata, WB', '2016-03-10', 'suresh.kumar@example.com'),
 (1008, 'Anita Rao', '45 Jubilee Hills, Hyderabad, TG', '2022-12-05', 'anita.rao@example.com'),
 (1009, 'Deepak Mehta', '9 Rose Avenue, Pune, MH', '2020-07-30', 'deepak.mehta@example.com'),
 (1010, 'Shalini Joshi', '17 Green Lane, Chandigarh, CH', '2015-02-18', 'shalini.joshi@example.com'),
 (1011, 'Rohit Iyer', '101 Lake View, Coimbatore, TN', '2014-08-09', 'rohit.iyer@example.com'),
 (1012, 'Geeta Menon', '29 Hilltop, Trivandrum, KL', '2021-10-01', 'geeta.menon@example.com'),
 (1013, 'Karan Malhotra', '56 Central Ave, Lucknow, UP', '2019-04-22', 'karan.malhotra@example.com'),
 (1014, 'Meera Kapoor', '2 Lotus Park, Jaipur, RJ', '2018-01-11', 'meera.kapoor@example.com'),
 (1015, 'Abhishek Roy', '77 Sunrise Blvd, Bhubaneswar, OD', '2022-03-03', 'abhishek.roy@example.com'),
 (1016, 'Lina Das', '11 River Road, Patna, BR', '2016-11-21', 'lina.das@example.com'),
 (1017, 'Varun Reddy', '34 East End, Visakhapatnam, AP', '2013-05-06', 'varun.reddy@example.com'),
 (1018, 'Simran Kaur', '66 Orchard St, Amritsar, PB', '2020-09-14', 'simran.kaur@example.com'),
 (1019, 'Tariq Khan', '5 Old Bazaar, Srinagar, JK', '2017-12-29', 'tariq.khan@example.com'),
 (1020, 'Rina Bose', '200 Central Plaza, Shillong, ML', '2015-06-07', 'rina.bose@example.com');

 -- null data
 insert into Employees_Data (Employee_ID,Employee_Name)
 values (1021,'Nitisa Kumar'),
		(1022, 'Varun Sharda');

-- fetching data
Select * from Employees_Data;

-- delete is used to remove a specific entry from a table 
delete from Employees_Data 
where Employee_ID=1008;

--checking if the row is deleted
Select * from Employees_Data;

--deleting all rows from table
delete from Employees_Data;

-- delete vs truncate
-- delete deletes rows one by one and truncate deletes all the rows
-- truncates forgets everything except the structure, and delete only deletes the rows.
