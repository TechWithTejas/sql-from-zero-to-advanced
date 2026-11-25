Select Statement Interview questions and answers

Important Interview points aboubt Select statement 

1.Select is used to retrieve data from one or more tables. 
2.It specifies the columns and expressions that should appear in the final result. 
3.We can select single column, multiple columns as well as all the columns from the table. 
4.Select * retrieves all the columns from the specified table. 
5.We can perform calculations using expression inside the select statement 
6.We can assign an alias- a shorter alternative name to columns and expressions. 
7.Distinct removes duplicate rows from the query result set.  
8.Select does not modify the original table data. 
9.In logical query processing order, select is evaluated after from, where, group by and having 


Question-1 : What is the purpose of select statement??
The main purpose of select statement is to retrieve data from one or more tables and specify the 
columns and expressions that should appear in the final result. 

Question-2 : What is the difference between select * and select column_name??
Select * retrieves all the columns from the specified table, whereas select column_name retrieves only the specified column

Question-3 : can we perform arithmetic calculations inside select??
Yes.We can perform arithmetic calculation using expression inside select statement to calculate new values based on the 
existing values without modifying the original table data.

Question-4 : Does select modify the original table??
No. Select is used to retrieve only the data from the table. IT does not modify the original table data. 

Question-5 : What is the difference between where and select??
Where filters rows from a table based on specified condition, Whereas select specifies which columns and expression should appear in the final result. 

Question-6 What is the difference between an alias and an actual column name??
An alias is a temporary o shorter alternative name which is assigned to column or expressions in the query output. It does not rename the column in the table. Whereas actual column name is the name given while creating a table and alias will not modify it. 

Question-7 : What is purpose of distinct??
Distinct removes the duplicate rows from the query result set and returns only unique values or unique combination of column values. 
It can be used with single column as well as with multiple columns. When distinct is used with multiple columns, it removes the duplicate 
combination of column values. 

Question-8 : Does select execute first because it is written first??
No.SQL follows a specific sequence known as logical query processing order in which from is always executed first even though select is written first in the query. 