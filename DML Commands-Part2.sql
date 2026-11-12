2. Delete Command 
What is Delete command??
1.The delete command is used to remove existing records/rows from a table.
2.It can remove single rows or multiple rows based on the condition. 
3.Unlike drop which removes both the table structure along with its data, delete removes only the data 
stored inside the table - without removing the table structure. 
4.It can be used with join and subqueries to remove the records based on the specified condition. 

Syntax - 
Delete from table_name 
where condition; 

Understanding the syntax - 
1. delete from table_name - specifies the table_name from which the data needs to be removed. 
2.Where condition - specifies which rows should be removed. 

Important Note:

If the WHERE clause is omitted, the DELETE statement removes all rows 
from the table, but the table structure remains unchanged.

Example 1: Delete a Single Employee
Scenario - Suppose we want to delete Rahuls record from the employees table.
Query - 
DELETE FROM employees
WHERE emp_id = 101;

What happens?
- DELETE FROM employees specifies that we want to remove records from the employees table.
- WHERE emp_id = 101 identifies Rahuls record.
- Only the row with emp_id 101 will be deleted

Here, the WHERE clause ensures that only Rahuls record is deleted, while the other 
records remain unchanged, including the table structure.

Example 2: Delete Customers from a Specific City
Scenario - Suppose we want to remove all customers from Bangalore.
Query - 
DELETE FROM customers
WHERE city = 'Bangalore';

What happens?
1.  DELETE FROM customers specifies that we want to delete records from the customers table.
2.  WHERE city = 'Bangalore' filters and selects only Bangalore customers.
3.  DELETE removes all the customer records that satisfy the condition.

Example 3: Delete Orders with a Low Amount
Scenario - Suppose we want to remove all orders whose order amount is less than 5,000.

DELETE FROM orders
WHERE order_amount < 5000;

What happens?
1. WHERE order_amount < 5000 filters and selects orders whose order amount is less than 5,000.
2.  DELETE then removes those selected orders from the orders table.

Example 4: Delete All Records
Scenario - Suppose we want to remove all records from the orders table but keep the 
table itself for future use.

Query:
DELETE FROM orders;

What happens?
1. Since there is no WHERE clause and no condition to filter rows, DELETE removes all rows from the orders table.
2. However, the table structure remains unchanged and can be used for future operations.