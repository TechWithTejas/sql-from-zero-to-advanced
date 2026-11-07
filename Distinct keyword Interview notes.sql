				                               Distinct Keyword in sql 
What is distinct keyword?? 
1.The distinct keyword in sql is used with the select statement to remove duplicate rows from the 
query result set and return only unique values or unique combination of column values.  

2. It helps us in retrieving only unique records from a table without displaying the duplicate rows.
    
Why do we need distinct keyword?? 
	1.It is useful when we want to display only unique values from a particular column. 
    2.It removes the duplicate rows from the query result set. 
    3.It retrieves unique combination of column values when multiple columns are specified. 
    4.Distinct does not modify the original table data. It just affects the query result set.

Syntax of distinct keyword 
	1.Distinct with single column 
				select distinct column_name 
				from table_name;
-->Here distinct removes the duplicate rows from the specified column and returns only the unique values.
	
	2.Distinct with multiple columns 
				select distinct column1, column2
				from table_name; 

-->When multiple columns are specified, distinct removes the duplicate combination of 
columns values. 
-->And the uniquenes is checked for the entire combination of selected columns, instead 
of checking it for each column individually 

                        Understanding distinct with examples 
Consider the follwing employees table: 
Emp_name- Alice,Bob,Charlie,David,Emma,Frank 
Emp_id - 101,102,103,104,105,106 
Dept_name - IT,HR,IT,Finance,HR,Finance 
Salary - 40000,50000,60000,70000,80000,90000 

Example-1 : Distinct with single column 
	Lets take dept_name column into consideration- becuase it contains duplicate values. 
    Query- 
    select distinct dept_name 
    from employees; 
    -->Here the dept_name column contains the following values : 
                   IT,HR,IT,Finance,HR,Finance 
	-->When distinct is applied on this specific column, it eliminates the duplicates. 
    -->And it returns the unique department names. 
    -->Each dept name appears only once in the final result . 
    
             Output - 
               IT 
               HR
               Finance 
Example-2 : Distinct with numbers 
	Lets take salary column into consideration 
Query - 
select distinct salary 
from employees; 

-->The salary column conatain the following values : 
          40000,50000,60000,70000,80000,90000
-->All the salary values are already unique.
-->Therefore distinct does not eliminate any values.
-->ALl the salary values are displayed in the result, becuase there are no 
dupllicate present.

            Output 
            40000
            50000
            60000
            70000
            80000
            90000
Conclusion 
If a column does not contain duplicate values, distinct returns all its values without 
removing anything.

Example-3 : Distinct with multiple columns 
-->When multiple columns are used, distinct removes duplicate combination of 
column values
Lets consider the following data:
Dept_name - IT,IT,IT,HR,HR 
Job_title - Developer,Tester,Developer,Developer,Developer

Query - 
select distinct dept_name, job_title 
from employees; 

-->When distinct is applied to these combination of columns, the result will look 
sometthing like this : 
Dept_name         Job_title 
   IT               Developer
   IT               Tester
   HR               Developer 

How??
-->The combination IT+Developer appears twice. Distinct will treat both the occurrences 
as one unique combination and removes its duplicates.
-->The combination IT+Developer it is different, so it will appear in the final result. 
-->Similary HR+Developer will be treated as one unique combination and removes its duplicates.

Important note
	With multiple columns, distinct is applied to combination of column values, not to 
	each column individually.
    
Example-4 : Distinct with null values 
Distinct will also handles duplicate null values. 
Lets say the dept_name column contains the following values : 
      IT, HR,Null,Finance,Null,Marketing 
Query- 
select distinct dept_name 
from employees; 
-->here the dept_name contains two null occurrences. 
-->When distinct is applied, the duplicate null occurrences are represented as 
single null value in the result set. 
-->Therefore only one null value appears in the final result set. 

Output - 
IT,HR,Null,Finance,marketing

Characteristics of distinct keyword 
1.Distinct keyword removes the duplicate rows from the query result set. 
2.It is used with the select statement 
3.It returns unique values are unique combination of column values. 
4.When multiple columns are specified, distinct is applied to combination of 
selected columns, not to each column individually and removes the duplicate combination 
of column values. 
5.Distinct does not modify or delete the original table data. It just affects the 
query result set. 
6. It is logically processed after select expressions are evaluated and before the order by clause. 
7.It can be used with expressions as well with columns. 
8.Distinct can also be used with column containing duplicate null values. Hence 
the duplicate null occurrences are represented as single null value in the
final result. 

Important combination- Distinct with order by 
Distinct can also be used together with order by clause in a query.
Example- 
Consider the following query 
select distinct dept_name 
from employees 
order by dept_name; 

-->Distinct removes the duplicate dept_names and retains only the unique deparements. 
-->Order by sorts those unique dept_names in ascending order by default. 
-->We can also specify the ordering nature as DESC to sort in descending order.

Output - ascending order 
dept_name 
Finance 
HR 
IT 

Distinct with Aggregate functions 
Distinct can also be used with aggregate functions.
It ensures that the duplicate values are removes before aggregate calculations is performed.
Example-1 : count(distinct column_name)
Scenario- count the number of unique department names in employees table.
Query- 
select count(distinct dept_name) as unique_dept_count
from employees;

        Output - 
        unique_dept_name 
          3 
-->Distinct dept_name will return the unique dept_names from the dept_name column
-->count(distinct dept_name) will count the number of unique dept names in the dept_column
-->Therefore the result is 3 

Example-2 : sum(distinct salary)
Lets say the salary column contains - 40000,40000,50000,60000 
Query- 
select sum(distinct salary) as unique_sum_total
from employees;

-->Distinct removes the duplicate salary value-40000
-->sum(distinct) will calculate the total sum of remaining unique values.

Calculation - 40000+50000+60000 = 150000

                     3 Important interview questions 
	1.Does distinct removes the duplicates from the original table??
No.Distinct removes the duplicates from the query result set. It does not 
modify or delete the original table data. The original table remains unchanged.

   2.Does distinct modify the original table data??
No. Distinct affects only on the result returned by the query i.e query result set. It does not 
make any changes to original table. 

   3.What happens when distinct is used with multiple columns??
WIth multiple columns, distinct is applied to combination of selected columns, instead of applying 
seperately to each column and removes the duplicate combination of column values.

Example- select distinct dept_name, job_title 
		from employees; 
	-->Here the uniqueness is checked for (dept_name+job_title) combination of columns.
    
   4. What is the difference between sum(salary) and sum(distinct salary) 
   --> sum(salary) will calculate the total sum of all non-null salary values including the 
duplicates ,whereas
   -->sum(distinct salary) will calculate the total sum of unique salary values.
   
Interview style definition 
-->The distinct keyword is used with the select statement to removes the duplicate rows from the 
query result and return unique values are unique combination of column values. 
-->It does not modify or delete the original table data, it just affects the query result set.
