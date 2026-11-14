DML Commands Interview questions and answers 

1.What are DML commands??
-->DML stands for Data Manipulation Language.
-->DML commands are used to manipulate or modify the data stored inside the database tables such as adding, updating and removing records. 

2.What are the types of DML commands??
SQL supports three types of DML commands which are : Insert, Update & Delete. 

3.What is the difference between Delete and Truncate??
-->Delete is a DML command which deals with modifying the data stored inside tables by removing specific rows or all the rows from the table based on specified condition without modifying the table structure. 

-->Truncate is a DDL command which deals with structure of database object by removing all the rows together from the table while retaining table structure.

4.What happens if we execute an update statement without where clause??
-->Always use where clause when you are updating or deleting specific rows. 
-->Without where clause, all the rows in the specified table will get updated. 

5.What happens if we execute a delete statement without where clause??
-->Without where clause, all the rows from the specified table will be removed, but the table structure 
remains unchanged. 

6.Can we insert multiple records using a single insert statement??
Yes. We can insert multiple rows by separating rows of values with a comma using single insert statement. 

7.Can we update multiple columns in a single update statement??
yes. We can update multiple columns by separating column-value pairs with a comma in a single update statement.

8. What is the difference between delete and drop ??
-->Delete removes specific rows or all the rows from the table without removing table structure.
-->Drop removes the entire table, including its structure and all its data. 

9.Can we use where clause with update and delete commands??
Yes. We can use where clause to specify which rows should be updated and deleted. 

10.Can we insert records into specific columns without providing values to all the columns??
yes. We can explicitely define the column names and the values must be provided in the same order as the columns were defined in the table 
and each value must have compatible data type. The columns which are not defined will receive default values or null values depending upon the constraints. 
 

