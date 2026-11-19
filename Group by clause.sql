Group By Clause 

What is Group By clause??

-->Group By clause in sql is used to group rows that have same values in one or more columns. 
-->Once the rows are grouped, sql applies required aggregate function such as count(),min(),max() etc separately to each group. 
-->It is commonly used with aggregate function to calculate summary results/perform group wise aggregate calculations and return 
one summarized row for each group.

There are two important points to be remembered : 

Important-Point1 : Without group by, aggregate functions will operate on the entire table and sql will treat the table 
as one single group. 

Important-Point1 : With group by, aggregate functions will operate on each single group to calculate summary results and thereby 
returning one summarized row for each group. 

Therefore the flow becomes : 
1.Without group by --> Sql will treat entire table as one single group --> Aggregate function operate on the entire table -->
Finally we obtain one overall summarized result. 

2.With group by -->Well have multiple groups --> Aggregate functions operate on each single group and calculates summary results -->
Finally one summarized row is returned for each group.

Consider the following employees table:

emp_name  dept_id	     salary
Alice	     10	         40000
Bob	         20	         50000   
Charlie	     10	         60000
David	     20	         70000
Emma	     10	         80000
Frank	     30	         90000

Example-1 : Understanding without group by 

Query - 
select sum(salary) as total_sal 
from employees; 

-->Sql reads all the rows from the employees table and treats entire table as one single group. 
-->Then sum() aggregate function will operate on the entire table and takes all the salaries from the salary column 
adds them all and return one overall summary result. 

-->therefore without group by sql treats entire table as one single group and aggregate function will work 
on the entire table and returns one overall summary result.

Example-2 : understanding with group by 
Scenario - Department wise total salary - Suppose we want to calculate the total salary for each department 

Query - 
select dept_id, sum(salary) as total_sal 
from employees 
group by dept_id; 

Step-1 : Sql first reads all the rows from the employees table.
Step-2 : Next Group by clause groups rows that have same values in one or more columns. Here it groups rows based on dept_id column 
Dept_id-10 : Alice,Charlie,Emma 
Dept_id-20 : Bob,David,
Dept_id-30 : Frank

Step-3 : Once the rows are grouped, sql now applies sum() aggregate function to each group to calculate the total salary for each department 
Dept_id - 10 : 40000+60000+80000 = 180000 
Dept_id - 20 : 50000+70000 = 120000 
Dept_id - 30 : 90000 

Step-4 : Finally sql returns one summarized row for each group. 
Dept_id - 10,20,30 
total_sal - 180000,120000,90000 

Therefore with group by, the entire table is divided into multiple groups. And aggregate function work on each group separately to calculate ssummary results and returns one summarized row for each group. 

General working steps of Group By clause 

Step-1 : Sql first reads all the rows from the table based on from clause.
Step-2 : Then Group by clause groups rows that have same values in one or more columns. 
Step-3 : Once the rows are grouped, aggregate calculations are performed separately on each group/ aggregate function will operate 
on each group to calculate summary results.
Step-4 : Finally one summarized row is returned for each group. 

Characteristics of Group by clause 
1.Group by clause groups rows that have same values in one or more columns. 
2.It is commonly used with aggregate functions to calculate summary results. 
3.It is applied and logically processed after where clause and before the having clause in the query processing order. 
4.It can group records based on one or more columns. 
5.When multiple columns are specified, groups are created based on the unique combination of column values. 
6.Group by with aggregate functions will return one summarized row for each group. 


							Group By with where clause 

-->this is an important combination that helps us understand how where clause filters rows before grouping. 
-->Where clause filters rows before grouping records and calculating summary results. 
-->It can be combined together with group by clause in a query to filter rows before grouping. 
-->Once after where filters and removes unwanted rows that do not satisfy the condition, group by groups rows from the remaining rows and aggregate 
function will operate on each group to calculate summary results and one summarized row for each group will be returned. 

Lets take an example - 
Suppose we want to calculate the total salary for each department for employees who are earning more than 40000,

Query - 
select dept_id, sum(salary) 
from employees 
where salary>40000 
group by dept_id; 

-->Here only after filtering employees who are earning more than 40000, group by can groups rows from the remaining rows and aggregate function can 
calculate summary result. 

Group by with multiple columns 
When multiple columns are specified with group by like : 
        Group by dept_id, job_title 
Sql creates groups based on unique combination of column values. 

Consider the following data : 
Emp_name - Alice,Bob,Charlie,David,Emma 
Dept_id - 10,10,10,20,20 
Job_title - Developer, Tester,Developer,Developer,Tester
salary - 40000,50000,60000,70000,80000 

Group by with multiple columns query 
select dept_id, sum(salary) as total_sal 
from employees 
group by dept_id,job_title; 

Step-1 : Sql first reads all the rows from the employees table specified in the from clause 
Step-2 : Next group by clause creates groups based on unique combination as follows : 
        (10,Developer) and (10,Developer) are repeated twice and sql will consider it as one unique combination. 
        (10,Tester)
        (20,Developer) and (20,Tester)
-->totally we have 4 unique combination 
-->Observe both alice and charlie belongs to the same group becuase they have dept_id = 10 and 
job_title = Developer the same 

Step-3 : Next sql applies sum() aggregate function to each unique group 
1.(10,Developer) - 40000+60000 
2.(10,tester) - 50000 
3.(20,Developer) - 70000
4.(20,Tester) - 80000 

Step-4 : Finally sql returns one summarized row for each unique combination 
Dept_id - 10,10,20,20 
Job_title - Developer,tester,Developer,Tester 
total_sal - 100000,50000,70000,80000 

Important points 
-->When multiple columns are specified, sql creates groups based on the unique combination of 
those column values. 
-->Aggregate functions are then applied to each unique combination and one summarized row is returned for 
each unique group. 





