Group By & having clause interview questions and answers 

Question-1 : What is group by clause??
The Group By clause in sql is used to group rows that have same values in one or more columns 
It is commonly used with aggregate functions to caclculate summary results and return one summarized row for each group. 

Question-2 : Why do we use group by clause??
We use group by clause to group rows, perform group wise aggregate calculations when used with aggregate functions and generate 
summarized results. 

For example - If we want to calculate total salary of employee in each department- we use group by clause with sum() function 
Query - 
select dept_id, sum(salary) as total_sal 
from employees 
group by dept_id; 

Group by clause groups rows based on dept_id column. Once the rows are grouped, sum() aggregate function will operate on each 
deparrment and calculates the total salary for each department 

Question-3 : What are aggregate functions. name some commonly used aggregate functions??
Aggregate functions are the built in functions used to perform calculatations across set of rows and return 
single summarized output. 
They are also known as Multi Row Functions[MRF] since they operate on multiple rows at once and returns a summarized output. 

Commonly used aggregate functions are : 
    -->count() - It counts the total number of rows or non null values. 
    -->sum() - It calculates the total sum of all numeric values. 
    -->avg() - It calculates the arithemetic means of all numeric values. 
    -->min() and max() - returns the smallest and largest value.
    
Question-4 : Can we use group by without aggregate functions??
Yes. We can use group by without aggregate function in a query. 
In this case, it groups rows that have same values and returns one row for each group. 

Question-5 : Can we use group by with multiple columns?? 
Yes. When group by is used with multiple columns, sql creates groups bsed on the unique combination of column values. 

Example - 
select dept_id, sum(salary)
from employees 
group by dept_id, job_title 

-->Here group by is used with more than one column. So sql creates groups based on the unique combination of both the columns. 

Question-6 : What is having clause??
The having clause is used to filter groups based on specified group level condition. 
It is logicaly processed after group by clause in the query processing order and filters groups not the individual rows. 

Question-7 : Why do we use having clause??
We use having clause to filter groups created by group by clause after performing group wise aggregate calculations. 

lets take an example 
select dept_id, count(*) as emp_count 
from employees 
group by dept_id 
having count(*)>5;

-->First employees are grouped based on their department id 
-->Then count(*) aggregate function will count the total number of employees in each department. 
-->Finally having clause filters only those departments having more than 5 employees. 

Question-8 : What is the difference between where and having clause??
Where clause filters and removes unwanted rows from a table before grouping records and calculating summary results. 

Having clause filters groups based on aggregate function results after grouping records and performing group wise aggregate function 
result. 

Question-9 : Can we use where and having clause together in a query?? 
Yes. We can combine where and having clause together in a query to unerstand the difference 
between row level filtering and group level fitering. 

Lets take an example - 
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
WHERE salary > 30000
GROUP BY dept_id
HAVING AVG(salary) > 50000;

-->First where filters the employees who are earning more than 30000. 
-->Next group by groups remaining rows based on their department. 
-->Then avg() calculates the average salary of all employees in each department 
-->finally having displays only those department whose average salary is greater than 50000. 

Question-10 : Can we use aggregate function directly with where clause??
No.Aggregate functions cannot be used with where clause - This is because where filters only the individual rows present in the 
table before grouping and calculating summary results. Whereas aggregate functions are generally used with groups to generate 
summarized results and filter them using having clause. 

Example of an invalid query:
SELECT dept_id, COUNT(*)
FROM employees
WHERE COUNT(*) > 5
GROUP BY dept_id;
-->This is invalid because where cannot be used to filter groups based on aggregate function results 

Instead we use having clause to filter groups 

valid query 
Select dept_id, count(*) as emp_count 
from employee 
where salary>40000 
group by dept_id 
having count(*) >5 

-->Having is used to filter groups based on aggregate function result. 

Question-11 :Can we use having without group by ??
Yes.Many sql databases allows us to use having clause without group by 
In that case, sql treats the entire result as one single group and having filters the group based on specified condition 

Example 
Select count(*) as emp_count 
from employees 
having count(*)>5 

-->Count() function will count the total number of employees and treat it as one group. 
--.Having checke whether the total employee count is greater than 5 or not. 
-->IF the condition is satisfied, the count is returned, otherwise no row is returned. 

What is the difference between group by and distinct 
Group by groups rows that have same values in one or more columns. It is commonly used with aggregate function 
to calculate summary results 

Distinct is used to remove duplicate rows from the query result set and return only unique values or unique combination 
of column values. 