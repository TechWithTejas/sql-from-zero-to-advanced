							## Having clause in sql 
## --> Having clause Introduction 
## Having clause in sql is used to filter groups based on aggregate 
## function result.

## It is applied and logically processed after group by clause in the query processing order 
## and works only on groups rather than individual rows.

## Unlike where clause which filters and removes unwanted rows before grouping records, 
## having clause filters groups only after performing group wise aggregate calculations.

                    ## Important rules regarding having clause 
## Rule-1 : use where clause for row-level conditions 
## Lets take an example- Consider the following query 
select emp_name, salary,job_title
from employees 
where salary>5000;

## Here the condition is where salary>50000. This condition will evaluate each 
## individual rows present in the employees table.
           ## IF the salary>50000 is greater than 50000, the corresponding rows are retained.
           ## Else if the salary is exactly equal to 50000 or less than that, the rows are removed.

## -->Therefore the final result contains only those employees who are earning more than 50000.

## Rule-2 : Use having clause for group-level conditions 
## -->Suppose we want to find the departments whose total salary exceeds 150000 

## Consider the following query 
select dept_id, sum(salary) as total_sal
from employees 
group by dept_id
having sum(salary)>150000;

## -->here the having condition will check and evaluate each group one by one and 
## retains only those groups that satisfies the group level condition.

                            ## Important Notes 
		## Note-1 : Where clause filters and removes unwanted rows before grouping records 
	## and calculating summary results.
		
        ## Note-2 : Having clause filters groups only after grouping records and performing group wise 
	## aggregate caluclations 
    
## Lets understand why do we need having clause rather than where clause for filtering groups. 

                              ## Scenario - Suppose we want to find the departments that consists of atleast 
					## 5 employees and total salary exceeds 120000 

## Point-1 : we cannot use where clause as follows 
## Query - 
select dept_id, count(*) as emp_count, sum(salary) as total_sal
from employees 
where sum(salary)>120000 and count(*)>5
group by dept_id;

## -->This is not valid, because where clause is used to filter only individual rows 
## present in the table not the groups.

## Since sum(salary) is a group wise aggregate result, where cannot be used to filter groups as well 
## as well it cannot be used with aggregate functions.

## Point-2 : Instead we use having clause 
## Query - 
select dept_id, count(*) as emp_count, sum(salary) as total_sal
from employees 
group by dept_id
having count(*)>5 and sum(salary)>120000;

## Thats why we say use where for row-level conditions and having for group level condition.

                            ## Important Note 
		## remember the above two points and use respective clauses for the use case depending upon the problem

## Gneral Working steps of having clause 
## Step-1 : Sql first reads all the rows from the table based on from clause.
## Step-2 : Next Group by clause groups rows that have same values in one or more columns.
## Step-3 : Once the rows are grouped/Once the groups are formed- sql applies 
     ## required aggregate function such as count(), min(),max() etc to each group and caluclates summary results.
## Step-4 : Then having clause filters groups based on the specified group level condition/aggregate condition.
## Step-5 : Finally sql returns only those groups that satisfies the having condition.

                      ## Characteristics of Having clause 
## 1. Having clause filters groups based on aggregate function result.
## 2. It is applied and logically processed after group by clause in the 
         ## Query processing order.
## 3. It filters groups only after grouping records and calculating summary results/
      ## performing group wise aggregate calculations.
## 4. It can also filter groups based on the grouping column.
## 5. It is generally used together with group by clause. 
## 6. It can also be combined with where clause together in a query- where in 
       ## where filters and removes unwanted rows before grouping records, while 
	## Having clause filters groups only after performing group wise aggregate calculations.
## 7.It can combine multiple group level or aggregate conditions using logical 
## operators such as and & or.


                     ## Difference between Where & Having clause 
## Where clause 
## 1. Where clause filters and removes unwanted rows before grouping records and 
   ## calculating summary results.
## 2.It is applied and logically processed before group by clause in the query processing order.
## 3. It is used only for row-level conditions.
## 4.Where cannot be used with aggregate conditions sum(salary)>120000, count(*)>5 as well to filter groups 
## Because where is used to filter only the individual rows present in the table not the groups.alter


## having clause 
## 1. having clause filters groups only after grouping records and performing 
    ## group level aggregate calculations.
## It is logically processed after group by clause in the query processing order.
## 3. having is used only for group level conditions.
## 4. Having is mainly used with aggregate conditions to filter groups and it can 
     ## combine multiple group level conditions using logical operators such as and & or.