Complete DML Commands
What are DML Commands??
1.DML stands for "Data Manipulation Language" commands 
2.DML commands are used to "manipulate" or "modify" the data stored inside database tables such as adding, 
removing or updating records using different commands. 
3.Unlike DDL- which affects the structure of database objects, DML deals only with the actula data stored 
inside those objects.
4.And the DML operations are performed on the rows of table without modifying the table structure.

Types of DML Commands 
SQL supporst three types of DML commands : 
1.INSERT - It is used to add new records/rows into a table.
2.UPDATE - It is used to modify or chnage existing records in a table.
3.DELETE - It is used to remove the records/rows from a table.

Lets us Understand each command one by one : 
Command-1 : Update 
What is Update??
1.The update command is used to modify or change existing records stored inside a table. 
2.It can update single row or multiple rows based on specified condition.
3.It can be used with where clause, joins, subqueries to update data based on 
specified condition. 
4.And the exact syntax of update depends on database we are using. 

Syntax - 
update table_name 
set column1 = value1, column2 = value2,--- 
from table_name ; 

Understanding the syntax 
1.update table_name - specifies the table whose data needs to be changed. 
2.set - specifies the column whose values need to be changed.
3.column = value - defines the new value that should be assigned to a column. 
4.where condition - specifies which rows should be updated. 

Note- Always use where clause when you are updating specific rows. WIthout a where 
clause all the rows in the table will get updated.

Example-1 : Update salary for one employee 
Scenario- Suppose we want to update rahuls salary from 60000 to 65000
Query - 
update employees 
set salary = 65000 
where emp_id = 101

What happens?
- UPDATE employees specifies that we want to modify the data in the employees table.
- SET salary = 65000 changes Rahuls salary to 65,000.
- WHERE emp_id = 101 identifies Rahul's record.

Therefore, only Rahul's salary gets updated.

Example-2 : Update multiple columns 
Scenario - Suppose we want to update amits salary and job_title at the same time. 
Query - 
update employees 
set salary = 80000 and job_title = 'Senior Analyst'
where emp_id = 103;

What happens??
1.Here set clause allows us to update multiple columns at the same time 
in a single update statement. 
2.Salary = 80000 will change the amits salary from 55000 to 80000
3. And job_title = 'Senior Analyst' will change his job_title to senior analyst.
4.Where ensure only amits record is updated. 

Example-3 : Update all employees salary
Scenario - suppose every employee receives a 5000 increment in their salary
Query- 
update employees 
set salary = salary+5000;

What happens?
1. Since there is no WHERE clause, the update statement updates all the  rows in the employees table.
2. salary = salary + 5000 increases the salary of each employee by 5,000.

Important Note: This example demonstrates that UPDATE can use an arithmetic 
expression to calculate a new value based on an existing value

Example-4 : Update customers city 
Scenario - Suppose we want to change Arjun city from Chennai to Bangalore.
Query - 
update customers 
set city = 'Bangalore'
where cust_id = 202;

What happens?
1. UPDATE customers specifies that we want to modify data in the customers table.
2.  SET city = 'Bangalore' changes Arjun city from Chennai to Bangalore.
3.  WHERE cust_id = 202 identifies Arjuns record.
Therefore, only Arjuns city gets updated.

Example 5: Update Orders Based on a Condition
Scenario - Suppose we want to change the status of all pending orders to processing.
Query - 
update orders 
set status = 'processing'
where status = 'pending';

What happens?
1.  SET status = 'Processing' changes the status of selected orders from Pending to Processing.
2.  WHERE status = 'Pending' filters and selects only pending orders.

Therefore, only the orders satisfying the condition will be updated.





 
