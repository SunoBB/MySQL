/*
	What SQL command would you use to add a 'Bonus' 
	DECIMAL column to the employees table?
*/

ALTER TABLE employees ADD Bonus DECIMAL(10, 2);

/*
	How do you remove the 'Location' column 
	from the employees table?
*/

ALTER TABLE employees DROP Loccation;

/*
	What happens when you execute the 
	TRUNCATE TABLE employees command?
*/

TRUNCATE TABLE employees
"TABLE Empty"


/*
	If you wanted to change the data type of the 'Budget' 
	column in department_budgets to INT, which SQL statement 
	would you use?
*/

ALTER TABLE department_budgets MODIFY Budget INT ;

/*
How would you delete the 
department_budgets table and ensure 
that it cannot be recovered?
*/

DROP TABLE department_budgets;