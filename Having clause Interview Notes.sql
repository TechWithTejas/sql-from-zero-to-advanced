Having clause 

Introduction to having clause 

1.having clause in sql is used to filter groups based on aggregate function result. 

2.It is applied and logically processed after group by clause in the query and works only on groups 
rather than individual rows. 

3.Unlike where clause which filters and removes unwanted rows before grouping records, having clause filters groups 
only after performing group wise aggregate calculations. 

Important Rules regarding having clause 

Rule-1 : Use where clause for row-level-conditions 
 
Lets take an example - Consider the following query

Select emp_name, job_title, salary 
from employees 
where salary>40000;

The condition where salary>40000 will evaluate each individual rows present in the employees table. 
IF the employees are earning more than 40000, the corresponding rows are retained. 
IF the employees are earning exactly equal to 40000 or less than that, the rows are excluded. 

Therefore the final result contains only those employees who are earning more than 40000.

Rule-2 : Use having clause for group level condition 
Suppose we want to find the departments whose total salary exceeds 150000

Query- 
Select dept_id, sum(salary) as total_sal 
from employees 
group by dept_id 
having sum(salary)>150000;

having clause will check and evaluate each group one by one and retains only those groups that satisfies the 
specified group level condition.

Important Notes

Note-1 : Where clause filters and removes unwanted rows before grouping records and calculating summary results. 

Note-2 : having clause filters groups only after grouping records and performing group wise aggregate calculations.

Lets  understand why do we need having clause rather than where clause for filtering groups. 

Scenario- Suppose we want to find the departments that consists of atleast 5 employees and total salary should exceed 150000. 

Point-1 : We cannot use where clause as follows : 
Query - 
select dept_id, count(*) as emp_count, sum(salary) as total_sal 
from employees 
where sum(salary)>150000 and count(*)>=5 
group by dept_id;

-->This is not valid - because where clause is used to filter individual rows present in the table not the groups. 
-->Since sum(salary) is a group wise aggregate result, where clause cannot be used to filters groups and as well as it 
cannot be used with aggregate functions. 

Point-2 : Instead we use having clause filter groups 

Query- 
Select dept_id, sum(salary) as total_sal, count(*) as emp_count 
from employees 
group by dept_id 
having sum(salary) >150000 and count(*)>=5;

Thats why we say use where for row level conditions and having for group level conditions. 

Important Point - Remember the above two points and use the respective clauses for the use case depending upon the problem. 

General working steps of having clause

Step-1 : SQL first reads all the rows from the table based on from clause. 
Step-2 : next group by clause groups rows that have same values in one or more columns. 
Step-3 : Once the rows are grouped, aggregate function will operate on each group to calculate summary results. 
Step-4 : Then having clause filters those groups based on specified group level condition. 
Step-5 : Finally sql returns only those groups that satisfy the condition. 

Characteristics of having clause 

1.having clause filters groups based on aggregate function result. 
2.It is applied and logically processed after group by clause in the query processing order. 
3.It filters groups only after grouping records and performing group wise aggregate calculations.
4.It can also filter groups based on the grouping column. 
5.It is generally used together with group by clause in the query. 
6.It can also be combined with where clause in the query- wherein where filters and removes unwanted rows before grouping, 
while having filters groups after grouping records and performing group wise aggregate calculations. 
7.It can also combine multiple group level or aggregate conditions by using logical operators such as and & or. 

Difference between where and having clause 

Where clause 
1.Where clause filters and removes unwanted rows before grouping records and calculating summary results.
2.It is applied and logically processed before group by clause in the query processing order. 
3.Where is used only for row-level-conditions
4.It cannot be used with aggregate conditions such as sum(salary)>150000 , count(*)>=5 because they are group wise aggregate result and 
where is used to filter only the individual rows present in the table not groups. 

having clause 
 
 1. having clause filters groups only after grouping records and performing  group level aggregate calculations.
 2. It is logically processed after group by clause in the query processing order.
 3. having is used only for group level conditions.
 4. Having is mainly used with aggregate conditions to filter groups and it can 
      combine multiple group level or aggregate conditions using logical operators such as and & or. 


 



