                             SQL-Where clause 
	What is where clause?? 
	1.The where clause in sql is used to filter rows from a table based on specified condition.
    2.It returns only those rows that satisfy the given condition
    
    Why do we use where clause??
    1.we use where clause to filter and remove unwanted rows from a table that do not satisfy the condition.
    2.It helps us to retrieve only the required records instead of retrieving all the rows from a table. 
    3.It filters rows before grouping records and calculating summary results.
    4.The where clause is used only for row-level conditions. 
    
Syntax of where clause 
Select column_list 
from table_name 
where condition;

                          Characteristics of where clause 
		1.where clause filters and removes unwanted rows from a table before grouping records 
	and calculating summary results. 
        2. It is logically processed after from clause and before the group by clause in the logical query 
	processing order. 
        3. The where clause cannot be used with aggregate conditions such as sum(salary)>120000 and 
	count(*)>5 because it is mainly used to filter individual rows before grouping records, whereas 
    aggregate conditions are generally applied to the groups to calculate summary results and filter them using having clause. 
        4.The where clause evaluates each row individually based on the specified condition. It retains only those rows 
        for which the condition evaluates to True and excludes those for which the condition evaluates to False or Unknown. 
        5.It can be used with different operators to filter rows based on different requirements : 
           -->comparison operators[=,<,><=,>=,!] - used to compare column values with specified values. 
           -->Null operators - IS NULL, IS Not Null - used to check whether a column contains a null or non -null values. 
           -->Logical operators[AND,OR,NOT] - Used to combine multiple conditions or reverse a condition. 
           -->Range operator[between] - used to filter the values within a specified range.

Let us understand how where clause filters rows: 
Consider the following query- 
select emp_name, salary,job_title 
from employees 
where salary>40000; 

Here the condition where salary>40000 will evaluate each individual rows present in the employees table.
1.If the employees salary is greater than 40000, the rows satisfying the condition are 
retained. 
2.If the employees salary is exactly equal to 40000 or less than that , those rows will be removed. 

Therefore the final result contains only those employees who are earning more than 40000.
    
	                    Interview style definition 
	Where clause in sql is used to filter rows from a table based on specified condition. It 
    performs row-level filtering and filters rows before grouping records and calculating summary results.
    
Important combination - Where clause with group by and having 
This is an important combination that helps us understand the difference between row-level 
filtering and group-level filtering. 
      --> Where -filters individual rows before grouping.
      --> Group by - groups rows from the remaing rows based on one or more columns 
      --> Having - filters those groups after grouping records and aggregate calcualtions have been performed.  
	
Example - 
Scenario - Suppose we want to find the departments : 
    1. Where we consider only employees who are earning more than 40000. 
    2. After filtering, each department must have at least 5 employees . 
Query - 
select dept_id, count(*) as emp_count 
from employees 
where salary>40000 
group by dept_id 
having count(*)>=5;

Consider the Sample Employees Table
emp_name emp_id	dept_id	salary
Alice	101	  10	40000
Bob	    102	  20	50000
Charlie	103	  10	60000
David	104	  20	70000
Emma	105	  30	80000
Frank	106	  10	90000

Step-by step execution 
Step-1 : From clause 
From specifies the source table based on which sql reads the data. 

Step-2 : Where clause 
Where clause filters the rows based on the condition 
	Condition - where salary>40000 
--> Here ALice is the only employees whose salary does not satisfy the condition because her salary 
is exactly equal to 40000. 
--> Therefore the alice row will be removed. 

Step-3 : Group by clause 
Group by clause creates groups based on dept_id from the remaining rows 
The resulting groups are : 
Dept_id-10 : Charlie,Frank 
Dept_id-20 : Bob,David 
Dept_id-30 : Emma 

Step-4 : Aggregate calculations 
Now sql applies the count() aggregate function to each group to get the summary result 
Dept_id-10 : count(*) = 2 
Dept_id-20 : count(*) = 2
Dept_id-30 : count(*) = 1 

Step-5 : Having clause 
The having clause filters the groups based on the conditin 
having count(*)>=2 

Evaluation:

dept_id	  COUNT(*)	Condition COUNT(*) >= 2	     Result
10	        2	                        TRUE	Retained
20	        2	                        TRUE	Retained
30	        1	                        FALSE	Removed

Step-6 : Final result 
Sql returns only those groups that satisfies the having condition 
dept_id	  emp_count
10	        2
20	        2

Therefore, departments 10 and 20 are returned because they have at least two employees earning more than 40000.

                                    Interview Questions and Answers
Q1. What is the WHERE clause in SQL?
The WHERE clause is used to filter rows from a table based on specified conditions.

Q2. Why do we use the WHERE clause?
We use it to retrieve only the required rows from a table by filtering unwanted records based on specified conditions.

Q3. What is the logical processing order of WHERE?
The WHERE clause is logically processed after FROM and before GROUP BY.

Q4. Can we use aggregate functions directly in the WHERE clause?
No. Aggregate conditions such as SUM(salary) > 50000 and COUNT(*) > 5 
cannot generally be used directly in WHERE because aggregate calculations are performed on groups. We use HAVING to filter groups based on aggregate conditions.

Q5. What is the difference between WHERE and HAVING?
WHERE filters individual rows before grouping.
HAVING filters groups after grouping and aggregate calculations.

Q6. Can we use multiple conditions in the WHERE clause?

Yes. We can combine multiple conditions using logical operators such as AND, OR, and NOT.

Example:

SELECT *
FROM employees
WHERE salary > 40000
AND dept_id = 10;

Q7. What happens if a row does not satisfy the WHERE condition?
That row is excluded from the query result and does not participate in subsequent grouping and aggregate calculations.