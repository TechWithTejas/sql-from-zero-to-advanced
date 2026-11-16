Complete DDL Commands 
What are DDL Commands??
-->DDL stands for Data Definition Language. 
-->DDl commands are used to define, create, modify and remove the structure of database objects such as : 
tables, index, views, schemas, etc.
-->Unlike DML[Data Manipulation Language] which deals with manipulating the data stored inside the database tables,
DDL primarily deals with defining and modifying the structure of database objects. 

Types of DDL Commands 
SQL supports 5 types of DDL commands 
1.CREATE - IT creates a new database object[database, tables, index]. 
2.ALTER - IT modifies the structure of existing database object [ adding column, modifying the column size]
3.DROP - It removes the entire database object including its structure and all its data. 
4.TRUNCATE - It removes all the rows from the table without modifying the table structure. 
5.RENAME - It changes,mm the name of existing database object.

Command-1 : DROP Command 

What is drop command??
The drop command is used to remove the entire database object including its structure and all the data stored inside it. 

Syntax of Drop command 
Drop table table_name; 

Important Points 
1.If we execute drop command on a table, the entire table including its structure[columns, constraints] along with all the data 
stored inside it will be removed from the database. 
2.After dropping the table, the table no longer exists in the database and we cannot access its data and structure. 

Example- Suppose we have customers table- lets drop it 
Drop table customers;

What happens after dropping customers table .
--> the customers table will be removed from the database
-->Its structure[columns, constraints] along with all the records stored inside it will also be removed. 
-->And the table no longer exists in the database and we cannot acces its data as well. 

trying to access data 
select * from customers will throw an error : table customers doesnt exist - because the customers table has been dropped so we cannot access it. 

Command-2 : TRUNCATE Command 
The Truncate command is used to remove all the rows from the table without removing the table structure. 

Syntax of truncate command 
Truncate table table_name; 

Example- Suppose we have orders table as follows : 
Order_id - 101,102,103 
Order_date - 2026-08-14,2026-08-15,2026-08-16 
Order_amount - 2000,1000,1500
Cust_id - 10,20,30 

Now lets execute truncate command on orders table 

Truncate table orders; 
What happens after truncating orders table??
1.All the records stored inside orders table will be removed. 
2.The table structure remains unchanged
3.All the columns, constraints, datatypes will also remains unchanged. 
4.And the table still exists in the database. 
5.We can use this table later to insert some new records into it. 

We can also verify whether the table exists or not by querying the table : 
select * from orders; 

-->Output - Empty result set. 

Command-3 : CREATE Command 

What is Create??
Create command is used to define the structure of database objects such as : tables, index, views etc.

Why do we need create??
Without creating a table, we dont have a proper place in which to store the records.
Create table allows us to : 
1.Define the table_name
2.Columns. 
3.Datatypes.
4.Constraints.

Create table syntax - 
Create table table_name(
 column1 datatype constraint,
 column2 datatype constraint,
 ------   ------   ------,
 ------   ------   ------
)

Lets understand the syntax -
1.Create table creates a new table inside a selected database.
2.column1, column2, ---- represents the attributes of charateristics of a table.
3.Datatypes specifies the type of data that each column can store. 
4.Constraints defines the rules to a column such as : primary key, foreign key, unique, not null etc. 

Example-1 : Create an employees table with primary key 
Create table employees(
emp_id int primary key,
emp_name varchar(50),
job_title varchar(50),
dept_name char(40),
salary decimal(8,2)
);

-->Create table employees creates a new employees table inside a selected database.
-->emp_id stores only integers and is defined with primary key constraint.
-->Emp_id will uniquely identifies each employee in the employees table and does not allows 
duplicates or null values. 
-->Emp_name stores variable length character data of upto 50 characters.
-->job_title stores the employees job designation.
-->dept_name stores the employees departments in which they are working.
-->Salary stores decimal values with a maximum of 8 digits in total , including 2 digits after the decimal.

For example - 
123456.78
Here decimal(8,2) allows us to store maximum of 6 digits before the decimal point and 2 digits 
after it. 

Example-2 : Create a department table with unique and not null constraint 
Create table department(
dept_id int primary key,
dept_name varchar(40) not null,
location varchar(40) not null
);

1.Dept_id uniquely identifies each department in the dept table - why?? because it is a 
primary key column . It will not allows duplicate or null values. 
2.Dept_name cannot contain null values because it is enforced with not null constraint. 
3.location stores the location of the department and cannot contain null values. 



