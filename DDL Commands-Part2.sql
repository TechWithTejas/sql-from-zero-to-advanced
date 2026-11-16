Command-4 : RENAME Command 
What is Rename??
The Rename command is used to change the name of an existing database object mainly a table. 

MySQL - rename syntax 
Rename table old_table_name 
to new_table_name; 

Example- Lets rename the employees table name to staff
Query - 

Rename table employees 
to staff;

1.The employees table is renamed to staff.
2.The table structure and all its data will remains unchanged. 

Command-5 : ALTER Command 

What is ALter command??
1.The alter command is used to modify the structure of an existing database object mainly a table without 
removing the data stored inside it.

2.Unlike create which creates a new table, alter modifies the structure of existing table that already exists. 

Why do we need alter ??
After creating a table we can perform the following operations : 
1.Adding a new column.
2.removing an existing column of a table.
3.Changin the datatype of a column.
4.Modify the column size.
5.rename a column.
6.rename a table.

Lets take an employees table as example : 
Create table employees(
emp_id int primary key,
emp_name varchar(50),
job_title varchar(50),
dept_name varchar(40),
salary decimal(8,2)
);

variation-1 : Adding a new column 
It adds one or more columns to an existing table.

Syntax - 
alter table table_name 
add column column_name datatype;

Example-1 : Add an email column to the employees table
Query- 

alter table employees 
add column email varchar(50);

-->now the email column is added to employees table and we can insert records into it. 

Example-2 : Adding multiple columns 
We can add multiple columns by separating them with a comma in a single alter statement. 

Query - 
alter table employees 
add column age int,
add column nationality varchar(40);

Variation-2 : Removing the existing column of a table 
We use drop keyword inside alter statement to permanently remove the specified column from a table.

Syntax - 
alter table table_name 
drop column column_name; 

Example-3 : Remove the age column from the employees table 
Query - 
alter table employees 
drop column age; 

-->Now the age column is permanently removed from employees and all the data stored inside will also be removed. 

Variation-3 : Modifying the column 
-->We can change the datatype of column along with its size without changing its name using modify keyword inside alter statement. 

Syntax - 
alter table table_name 
modify column column_name datatype;

Example-4 : Increase the column size of emp_name from 50 to 60 characters. 
Query- 

alter table employees 
modify column emp_name varchar(60);

-->Now the column size of emp_name changed from 50 to 60 characters. 

Example-5 : Now change the datatype and column size at the same time. 

Query - 
alter table employees 
modify column job_title char(50);

-->Now the datatype of job_title column changed from varchar to char. 

variation-4 : To change the name of a column 
To change the column name we use change keyword inside alter statement. 

Syntax - 
alter table table_name 
change column old_name new_name datatype;

Note-In MySQL the datatype must always be specified when using change column. 

Example-6 : rename dept_name to department 
Query - 

alter table employees 
change column dept_name department varchar(50);


Example-7 : Rename column and change the datatype at the same time.

Query - 
alter table employees 
change column salary monthly_salary decimal(10,2);

column name salary changes to monthly_salary and the datatype changes from 
decimal(8,2) to decimal(10,2)

Variation-5 : rename column 
It changes the name of a column without changing its datatype. 

Syntax - 
alter table table_name  
rename column old_name to new_name; 

Example-8 : rename column emp_name to Emp_name 
alter table employees 
rename column emp_name to Emp_name; 

 Only the column name changes , the datatype remains unchanged 

Varitaion-6 : rename a table using alter 

Syntax- 
alter table old_table_name 
rename to new_table_name 

Example-9 : Rename employees to Employees 
alter table employees 
rename to Employees; 

--> The data stored inside the table will remains unchanged only the structure will be 
modified. 


Difference between Rename, modify and change column 
1.Modify column changes the datatype of column as well as increase its column size without changing the column name. 
2.Change column changes the column name and datatype at the same time. 
3.Rename column changes only the column name without changing its datatype. 








