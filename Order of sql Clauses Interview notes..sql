Order of sql clauses 
Introduction- 
1.The order in which we write the sql query is different from the order in which sql processes it or 
evaluates the query. 
2.Sql follows a specific sequence which is known as "Logical Query Processing order" which will help 
us understand how different clauses such as where, from, group by etc will work together in a query.
3.Understanding this order helps us to write better sql queries and understand how data is retrieved, filtered, 
grouped and finally displayed.

1.Sql Writing order 
The sql writing order is the sequence in which we write the sql query 
select column_list 
from table_name 
where row_level_condition 
group by column_name 
having group_level_condition 
Order by column 
limit number offset number;

-->This is the general order in which we write the sql query.
-->But, however sql does not logically process all the clauses in the same order.
-->Instead it uses a different sequence known as "SQL Logical query processing order".

2.Actual logical query processing order 
The sql engine will processes different clauses in the following order : 
From --> Join --> Where --> Group By -->Having --> Select -->Distinct --> Order By -->Limit/Offset.

Lets understand each clause one by one : 
Step-1 : From clause 
What is the From clause??
From clause specifies the source table from which sql reads the data.

Why do we need from clause??
1.Sql needs to know where the data comes from before it can filter, group or perform other 
operations on data.
2.Therefore from is the first executable clause in the logical query processing order. 

Example- 
select * 
from customers 
--> Here from customers will tell sql to retireve data from the customers table.
-->And the select * statement specifies that all the columns from the customer table should appear 
in the final result 

Step-2 : Join 
A join combines rows from two or more tables based on common column present between them.

Why do we need join??
Because join allows us to retrieve related information which are stored in multiple tables together in a single query.

There are two important reasons : 
Reason-1 : Data is often normalized into multiple tables 
1.In relational database - data is often normalized 
2.Normalization means organizing the data into multiple related tables instead of storing all the 
information in one large table.
3.This helps us in reducing data redundancy and maintain data consistency. 

Example- Instead of storing customer information and order information in one large table, we can have 
2 seperate tables. 
Customer table 
Cust_id - 101,102,103 
Cust_name - John,Smith,Megan 

Order table 
Order_id - 10, 20, 30 
Cust_id - 101,102,103 
Order_amount - 1500,2000,1000 

-->here customer information is stored in one table, while order information is stored seperately in 
orders table.
-->The cust_id is the column that connects both the tables.
-->Therefore we can use join to bring the related information together in a single query. 

Reason-2 : Join allows us to retrieve related information from multiple tables in a single query 
Why normalization is related to join??
Consider the flow : 
Normalization - means data is divided into multiple tables
related information is stored into multiple tables 
Join combines that related information together in a single query based on the common column present 
between them 

Example- suppose we want to display the customer names along with theri corresponding order amount 
-->Customer information is store in customers table.
-->Order information is stored in order table.
-->So the related informations are stored seperately in two seperate tables, so join combines that related 
information together .

Query - 
select c.cust_name, o.order_amount 
from customers c 
Inner join orders o 
on c.cust_id = 0.cust_id;

Output - 
cust_name - John, Smith, Megan 
Order_amount - 1500,2000,10000 

-->The inner join combines rows from two or more tables based on matching cust_id 
-->The on condition specifies how the rows from two tables are related.
-->Only rows satisfying the join conditions are included in the inner join result.

Step-3 - Where clause 
What is where clause ??
Where clause filters rows from a table based on specified condition.

Why do we need where clause??
-->It filters and removes unwanted rows before grouping records and calculating summary results.
-->It returns only the rows that satisfies the specified condition.

Example- 
select emp_name, job_title,salary 
from employees 
where salary>40000; 

--.here the condition where salary>40000 will evaluate each row individually.
-->If employees are earning more than 40000, the rows satisfying the condition are retained.
-->If employees salary is exactly equal to 40000 and less than that , the rows are excluded.

Therefore the final result contains only those rows that satisfies the condition.

Step-4 : Group By clause 
What is Group by clause??
Group By clause in sql is used to group rows that have same values in one or more columns 

Why do we need group by clause??
-->It is commonly used with aggregate functions to calculate summary results or perform group wise aggregate calculations.
-->It returns one summarized row for each group when used with aggregate functions.

Example - 
select dept_id, count(*) as emp_count 
from employees 
Group By dept_id ; 

How does it work?

-->First, employees are grouped based on their department ID.
-->Then, the COUNT(*) aggregate function is applied separately to each group.
-->It calculates the number of employees present in each department.

Therefore, the query returns one summarized row for each department.

Step-5 : Having clause 
What is having clause??
The having clause filters groups based on aggregate function results.

Why do we need having clause??
-->having clause filters groups after grouping records and performing group wise aggregate calculations. 
-->It returns only those groups that satisfies the specified having condition.

Example- Consider the folloiwng query 
select dept_id, count(*) as emp_count 
from employees 
group by dept_id 
having count(*)>5;

How does it work?

-->First, employees are grouped based on their department ID.
-->Then, the COUNT(*) aggregate function is applied separately to each group to calculate the number of employees present in each department.
-->Finally, the HAVING clause filters the groups and retains only those departments that have more than five employees.

Therefore, the query displays only departments having more than five employees.

Step-6 : Select statement 
What is select statement??
The select statement specifies the columns and expressions that should appear in the final 
result. 
It is a DQL Command. 

Why do we need select statement??
-->It is used to prepare the output of the query by selecting required columns and 
expressions.
-->At this stage, sql determines what data should be displayed in the output.

Lets consider the same example 
SELECT dept_id, COUNT(*) AS emp_count
FROM employees
GROUP BY dept_id
HAVING COUNT(*) > 5;

-->First sql reads all the data from employees table specified in the from clause.
-->Next it groups all the rows using Group by clause based on dept_id.
-->After that it calculates the number of employees present in each department using 
count() aggregate function.
-->Later having filters each group based on specified having condition.
-->Finally select will determine the columns that should be displayed in the output. 

Therefore the final output contains : 
      dept_id and emp_count 
      
Step-7 : Distinct keyword 
What is distinct keyword??
The distinct keyword in sql removes the duplicate rows from the query result based on 
the columns or expressions specified in the select list. 

Why do we need distinct keyword??
-->because it returns only unique values or unique combination of values.
-->It does not modify or delte the original table data. 

Example- 
select distinct dept_name 
from employees;

-->Suppose multiple employees belongs to the same department- as a result the same dept_name 
may appear in multiple rows. 
-->Distinct removes the duplicate dept_names and display each unique dept_name only once. 

Step-8 : Order By clause 
What is order by clause??
The order by clause in sql is used to sort the result set of query in based on one ore 

Why do we need order by clause??
-->Because we need it to arrange the result set in ascending or descending order.
-->It helps us to display the result in desired order. 

In sql we use the following keywords for sorting 
1.ASC - Ascending order 
2.DESC - Descending order 

If we do not specifiy the order - sql uses ascending order as default.

Example:
SELECT emp_name, salary, job_title
FROM employees
ORDER BY salary DESC;

-->The result set is sorted based on salary column in descending order. 
-->Therefore employees with highest salaries will appear first in the result. 

Step-9 : Limit/Offset clauses 
What is limit clause??
The limit clause is used to restrict the number of rows returned by the query.

What is offset clause??
The offset clause is used to skip specific number of rows before returning the 
remaining rows. 

Example - LImit 
select * 
from employees 
limit 5;

-->The limit restricts the number of rows to 5 .
-->Therefore the query returns only the five employee records 

Example- Offset 
select * 
from employees 
order by emp_id 
limit 5 offset 5;

SELECT *
FROM employees
ORDER BY emp_id
LIMIT 5 OFFSET 5;

Explanation:
1.First, the result is sorted based on emp_id.
2.The OFFSET 5 clause skips the first five rows.
3.The LIMIT 5 clause returns the next five rows.

Therefore, the query skips the first five employee records and returns the next five records.

Important Note:

LIMIT and OFFSET are commonly used for pagination.
Pagination means dividing a large result set into smaller groups of rows or pages.
It is recommended to use ORDER BY along with LIMIT and OFFSET to ensure consistent and predictable results.
LIMIT and OFFSET syntax may vary across database systems.


