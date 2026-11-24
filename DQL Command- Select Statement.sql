DQL Command - Select statement 
What is select statement ?? 
Select is a DQL command used to retrieve data from one or more tables. 

Why do we use select statement??
-->It specifies which columns, expressions and calculated values should appear in the final output. 
-->It is used to prepare the output of the query by selecting required columns and expressions. 

Syntax of select 
select column1, column2, column3,--- 
from table_name; 

Lets understand the syntax 
1.Select 
It specifies the columns and expression that appears in the result. 
We can select one column, multiple columns or all the columns from the table. 

2.column1, column2, --- 
Are the attributes or characteristics of a table that needs to be retrieved from it. 

3.from table_name 
specifies the table from which data needs to be retrieved. 

Lets understand select with different examples 

Command-1 : Selecting specific columns 

What happens when we select specific columns from table??
When we select specific columns, sql retrieves only those columns from the table 
and displayes them in the final output.

Example-1 : Selecting employee names 
Scenario - Suppose we want to retrieve only names of all the employees 

Query - 
select emp_name 
from employees; 

What happens??
-->Select emp_name specifies that only emp_name column should appear in the final result. 
-->From employees specifies that data should be retrieved only from employees table.

Example-2 : Selecting multiple columns 
Scenario - Suppose we want to retrieve emp_name, their salaries and department they are working with 

Query - 
select emp_name, salary, dept_name 
from employees;

-->Select specifies 3 columns emp_name, salary and dept_name that should be present in the output. 
-->From employees specifies the source table from which data needs to be retrieved. 

Important Point 
The columns appearing the final output will be in the same order as the columns were specified in the selet statement.

Command-2 : Selecting all the columns 
How do we retrieve all the columns from a table??
Sql provides * operator to retrieve all the columns from a table. 

Example - We want to retrieve all the columns and all the records from employees table. 
Query - 
select * 
from employees; 

-->Select * specifies that all the columns should appear in the final result 
-->And from employees specifies the employees table from which all the records should be retrieved. 

Command-3 : Select with expressions 
Can we perform calculations with select??
Yes. Select allows us to use expressions and calculations to prepare the output.
We can perform arithmetic operation on column values without modifying the data stored in the table. 

Example-1 : Calculating annual salary 
Scenario - Suppose employees receives their salary every month, and we want to calculate their annual salary

Query - 
select salary, salary*12 
from employees; 

-->The expression salary*12 will calculate the annual salary for each employees based on their current salary.

Command-4 : Select with distinct 
Distinct removes the duplicate rows from the result set and returns only unique values or unique combination of column values. 

Syntax - 
Select distinct column_name 
from table_name; 

Example-1 : retrieve unique department 
Scenario - Suppose multiple employees belongs to the same department and we want to display the list of unique department 
Query - 
select distinct dept_name 
from employees; 

Select distinct dept_name will return only the unique dept names by removing the duplicate dept_names from the result set. 

Example-2 : Calculating salary after increment 
Scenario - Suppose we want to display salaries along with 5000 increment in their salary without modifying the original data 
stored in the table. 

Query - 
select salary, salary+5000 
from employees; 

-->Here salary+5000 expression calculates a new salary for all employees by increment salary for each employees by 5000. 
-->The original salary data in the employees table will remains unchanged. 

Example-2 : Distinct on multiple columns 

Query - 
select distinct dept_name, city 
from employees; 

-->When distinct is applied on multiple columns, sql removes the duplicate combination of column values. 
--.For example if multiple employees belongs to same IT and Chennai that combination will appear only once in the result. 
-->the uniqueness is checked for the combination of selected columns (dept_name, city) instead of checking it for each column individually.

Command-5 : Select with aliases 

What is an alias??
-->An alias is a temporary or shorter alternative name given to a column, expressions and table in the query result set. 
-->We use alias to make column name, table more meaningful, readable and understandable in the output. 
-->Alias can be assgined by using AS keyword. 

Syntax - alias for column 
Select column_name as alias_name 
from employees; 

Example-1 : giving an alias to column 
Scenario - Suppose we want to display emp_name to Employee Name in the output 

Query 
select emp_name as Employee Name 
from employees; 

-->as Employee Name assigns a temporary display name to a column in the output. 
-->Therefore the output column will be displayed as Employee Name instead of emp_name 

Example-2 : Giving an alias to expression 

Query - 
select salary, salary*12 as annual_salary 
from employees; 

-->Salary*12 calculates annual salary for all employees based on their existing salary 
-->As annual_salary assigns a meaninggul name to the calculated expression 


Important points about select statement 
1.Select is used to retrieve data from one or more tables. 
2.It specifies the columns and expressions that should appear in the final result. 
3.We can select one column, multiple columns as well as all the columns. 
4.Select * retrieves all the columns from the specified table. 
5.We can perform calculations using expressions inside the select statement 
6.We can provide an alias- a shorter alternative name to columns and expressions. 
7.Distinct removes the duplicate rows from the query result. 
8.Select does not modify the original table data. 
9.In logical query processing order, select is evaluated after From, Where, Group By and having. 
    







