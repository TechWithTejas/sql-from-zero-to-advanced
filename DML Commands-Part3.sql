Insert Command 
What is Insert command??
1.The Insert command is used to add new records into a table.
2.It allows us to provide values to all the columns or only to specific columns of a table.
3.The values provided must match the column order and compatible datatypes when the column names 
are not explicitely defined. 

Syntax- 
Insert Into table_name 
values(value1,value2,value3,----); 

Understanding the syntax 
1.Insert into table_name - specifies the table into which we want to insert the records.
2.values - specifies the values that needs to be added. 
3.The values must be provided in the same order as the columns were defined in the table when the 
column names are not explicitely defined. 
4.The number of values must match the number of columns and each value must have compatible datatypes. 
5.We can also explicitely define the column names which allows us to insert records into specific columns.

Lets do three practical insertion operation : 
Example-1 : Insert a single employee 
Scenario - Suppose we want to add a new employee named kiran to employees table.
Query - 
Insert into employees 
values(104,'kiran','Tester',50000,'IT');

What happens??
1. A new row is added into the employees table.
2. Since the column names are not explicitely defined, the values must be provided in the same order 
in which the columns were defined. 

Example-2 : Inserting multiple employees 
Scenario - Suppose we want to add two employees at the same time. 
Query - 
Insert into employees 
values (105,'ravi','developer',60000,'IT'),
(106,'Meena','HR Executive',48000,'HR');

What happens??
1. Two new rows are added to the employees table using a single INSERT statement.
2. Multiple rows can be inserted by separating each row of values with a comma.

Example-3 : Insert into specific columns 
Scenario - suppose we want to insert a new customer row and explicitely specify the column name 
Query - 
Insert into customers(cust_id,cust_name,city)
values(204,'kavya','pune');

What happens??
-->The column names are explicitely defined after the table_name. 
-->And the values are defined according the column order and each value must have compatible datatype. 

