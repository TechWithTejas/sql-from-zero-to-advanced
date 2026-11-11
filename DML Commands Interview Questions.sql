DML Commands Interview Questions and answers : 
1. What are DML commands??
DML stands for Data Manipulation Language. 
DML commands are used to manipulate or modify the data stored inside the database tables 
such as adding, updating and deleting records. 

2.What are the different types of DML commands??
Sql supports three types of DML commands which are : Insert, Update and Delete. 

3.What is the difference between Delete and Truncate??
Delete is a DML command which removes specific or all the rows from the table based on 
the condition while retaining table structure. 
Truncate is a DDL command which removes all the rows from the table without removing its 
structure.

4.What happens if we execute an update statement without where clause??
Always use where clause when you are updating specific rows. 
Without where clause all the rows in the specified table will be updated. 

5.What happens if we execute a delete statement without where clause??
Without where clause, all the rows from the specified table will be deleted, but the table 
structure remains unchanged.

6.Can we insert multiple records using a single insert statement?? 
Yes. We can insert multiple rows by seperating a rows of values by a comma using single 
insert statement. 

7.Can we update multiple columns in a single update statement??
Yes. We can update multiple columns by seperating column-value pairs with a comma in the 
set clause. 

8.What is the difference between Delete and Drop??
Delete removes specific or all the rows from the table while retaining its structure. 
Drop removes the entire table, including its structure as well as data. 

9.Can we use where clause with update and delete commads?? 
Yes. We can use where clause to specify which rows should be updated and deleted. 

10.Can we insert records into specific columns without providing values for all columns. 
Yes. We can explicitely define the column names and the values must be provided in the 
same order as the columns were defined and each value must have compatible datatype. And the 
the column which are not defined will receive default values or null values, depending upon 
the constraints. 




 
