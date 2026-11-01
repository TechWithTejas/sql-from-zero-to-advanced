	          			 Aggregate Functions in sql 
 -->Aggregate functions are the built in functions which are used to perform 
      calculations on a set of rows and return single summarized output. 
 -->They are also known as Multi- Row-Functions[MRF] since they operate on multiple rows 
      at once and returns a summarized output.
 -->They are commonly used with aggregate functions to calculate summary results for each group.

                        Why do we need aggregate functions??
		 Aggregate functions are used to : 
					1. Summarize large datasets.
                    2. Generate summary reports.
                    3. Perform data analysis. 
                    4. And answer to business use case questions such as : 
               
                     1. What is the total revenue in this particular region.
                     2. How many customers are there in each location.
                     3.What is the highest order value placed by the customer.
                     4. What is the average salary of employees in each department.
                     5.Show me the details of employees who are earning the minimum salary.
The key ideas is that aggregate functions will summarize the data.

Types of aggregate functions in sql- 
1.count()- What count() function does??
-->It counts the number of rows or non null values present in the table 
depending upon how it is used.
                
                In sql count() can be used in 3 different ways.
1.count(*) - It counts the total number of rows present in the table
including the rows where one or more columns contains null values.

2.count(column_name) - It counts only the non null values present in the 
specified column.

3.count(distinct column) - It counts only the unique non null values 
present in the specified column

Interview question - What is the difference between count(*) and count(column_name)??
-->count(*) counts the total number of rows present in the table including the rows 
where one or more column contains null values.

-->count(column_name) - counts only the non null values present in the 
specified column.

                 Lets take an example- 
		Consider the sample table as follows : 
	id- 1,2,3,4
    Name - rahul, null, john, null
    
1. with count(*)
Query - 
select count(*) as total_emps
from sample_table;

-->Output -- 4 why?? Because count(*) counts all the rows present in the table 
including the null rows i.e rows containing null values.

2. with count(column_name) 
Query - 
select count(Name)
from sample_table;

-->Output - 2 Why?? 2 - Because count(column) will count only the non null values present in the given column.
-->In this table we have only 2 non null values which are Rahul and John.

3. with count(distinct column_name)
lets say the ids are : 
id - 10,20,30,10,40,20,Null 
Query - 
select count(distinct id)
from sample_table;

-->Output 10,20,30,40 Why?? count(distinct column) will count only the unique non null values.
-->here the unique non null values are 10,20,30 and 40 which are distince and count(distinct) will ignore the 
duplicates and as well rejects the null values.

    Important-point-1 : Aggregate functions without group by 
-->When we use an aggregate functions without group by, sql will consider 
the entire table as one single group and aggregate functions will operate on the 
entire table and returns one overall summary result.

Lets take an example - 
Consider the employees table - that consists of Emp_name, Job_title, salary 
Query - 
select sum(salary) as total_sal 
from employees;
-->Since no group by is used, sql considers entire table as one single group 
and performs aggregate calculations.

Important-point-2 : Aggregate functions with group by 
-->When we use an aggregate function together with group by, group by clause 
will divide the entire table into multiple groups and aggregate function will 
operate on each single group to calculate summary result and return one summarized row for each group,

      Important-point-3 : Aggregate fucntions with where clause
Where clause filters and removes unwanted rows before grouping records 
and calculating summary results.
Lets take the same simple example - which is total salary 
Query - 
select sum(salary) as total_sal
from employees
where salary>45000;

-->here sql first reads all the rows from the employess table based on from clause.
-->Then where clause filters the rows that do not satisfy the condition.
-->Finally aggregate function will operate on the remaining rows and return summarized result.

Therefore where filters rows before performing group wise aggregate calculations.

      Important-point-4 : Aggregate function with having clause 
having clause filters groups based on aggregate function result.
Query - 
select dept_id, count(*) as emp_count 
from employees 
group by dept_id
having count(*)>5

-->Therefore having clause filters groups only after group wise aggregate calculations are performed.

     Important-point-5 : Where vs group by vs aggregate function vs having.
     -->Where clause filters and removes unwanted rows that do not satisfy the 
     condition before grouping records and calculating summary results.
     
     -->Group by creates groups by grouping rows that have same values in one or more columns.
     
     -->Aggregate functions will calculate summary result for each group or for the 
     entire table depending upon how it is used i.e whether with or without group by.
     
     -->Having clause filters groups based on aggregate function result i.e after performing 
     group wise aggregate calculations.
     
     
     
         Lets take an example to understand the difference between where, group by, aggregate function and having 
         Consider the following query - 
         select dept_id, count(*) as emp_count 
         from employees 
         where salary>45000 
         group by dept_id
         having count(*) >=5;
         
         -->Where performs row-level filtering 
         -->Group by groups rows that have same values.
         -->Aggregate function will calculate summary result.
         -->Having performs group level filtering.

2.min() and max()
min() and max() aggregate functions returns the smallest and largest value
present in the given column.
Example - 
select max(salary) as max_sal,
       min(salary) as min_sal
from employees;

3.avg()
The avg() aggregate function will calculate the arithmetic mean of all non null 
numeric values present in the given column.
Example - 

-->Lets assume the salary column in the employees contains the following values : 
       40000,50000,60000,70000
select avg(salary) as avg_sal
from employees;
-->Output - 57500 

But how does it calculate internall 
(40000+50000+60000+70000)/4 -- which corresponds to 57500

Important points 
-->AVG() ignores NULL values while calculating the average.
-->It works with numeric values.

4.sum()
The sum() aggregate function will calculate the total sum of all numeric values 
present in the given column.

Lets say the salary column contains- 40000,50000,60000,70000
Query - 
select sum(salary) as total_sal
from employees;

-->Output - total_sal : 220000 
Note- sum() aggregate function will ignore the null values when calculating total.
         
	
