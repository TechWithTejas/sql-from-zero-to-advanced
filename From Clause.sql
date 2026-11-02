SQL From clause 
What is the From clause?? 
-->The From clause specifies the source table from which sql retrieves the data to perform different 
operations on it. 
-->It tells the sql where the required data is stored. 

Why do we need From clause ??
-->It allows us to fetch the required table data before performing operations such as filtering, grouping and sorting.
-->It also allows us to combine related information from multiple tables using join operation. 
-->The main purpose of from clause is to specify the source table and allow sql to retrieve the data. 

Syntax of from clause 
select column_list 
from table_name; 

Example - Consider the following employees table 
emp_id	emp_name	dept_name	 salary
101	    Alice	       IT	     40000
102	    Bob	           HR	     50000
103	    Charlie	       IT	     60000
104	    David	       Finance	 70000

Query - 
select emp_name, salary 
from employees; 

Output:

emp_name	    salary
Alice	        40000
Bob	            50000
Charlie	        60000
David	        70000
-->Here from clause specifies employees as the source table from which sql retrieves the data.
-->And only after fetching the data from a table, we can perform different operations on it. 

                    Important Concept: SQL Writing Order vs Logical Query Processing Order
		There is an important difference between the order in which clauses are written in the query and the 
	logical processing order.
1.Sql writing order 
select column_list 
from table_name 
where row_level_condition
group by column_name 
having group_level_condition 
order by column_name;

2.Logical query processing order 
-->From 
-->Where 
-->Group by 
-->having 
-->select 
-->Distinct 
-->order by 
-->Limit and offset. 

As per the writing order select comes before from- but according to logical query processing order from 
is always executed first even though select is written first in the query. 

                     Characteristics of From clause 
		1.From clause is the first executable clause in the logical query processing order.
        2.From specifies the source table from which sql retrieves the data. 
        3.It is logically processed before where clause. 
        4.It can be used with join operation to retrieve related information which are stored in multiple tables 
        based on join condition 
        5.It can also use tabel aliases to give table a shorter or alternative name.
        6.It can reference tables, views and subqueries[derived tables]
        
From clause with join 
From clause can be used with join operation to retrieve related information from multiple tables 
using join condition 

Query - 
select e.emp_name, d.dept_dept_name 
from employees as e 
Inner join department as d
on e.dept_id = d.dept_id 

-->here employees and departments are the source table 
-->e and d are the table aliases. 
-->Join combines the matching records using the specified condition 

-->IF the specified join condition e.dept_id = d.dept_id does not match between the tables, those rows are 
excluded from the result when using inner join


Interview questions and answers ??
1.What is from clause 
From clause specifies the soucre table from which sql retrieves the data to perform different operations on it. 

2.Why is from clause important ??
From clause is very important - because it identifies the source table which is required by the query to evluate and allows sql to retrieve the data .

3.is from written before select in a query??
No.As per the writing order select comes before from. But according to logical query processing order, from is logically 
processed first before any other clauses.

4. What is the logical processing order of FROM and WHERE?

FROM is logically processed before WHERE. First, SQL identifies the source table data, and then WHERE filters the rows.

5. Can we use FROM with multiple tables?

Yes. We can from with join operation to  retrieve related information from multiple tables based on join condition.

6. Can we use aliases in the FROM clause?

Yes. Table aliases provide shorter or alternative names for tables and make queries easier to read.

Example:
SELECT e.emp_name
FROM employees AS e;

8. Can FROM reference a subquery?

Yes. A subquery in the FROM clause is commonly called a derived table. It generally needs an alias.

Example:
SELECT dept_id, avg_salary
FROM (
    SELECT dept_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY dept_id
) AS dept_summary;