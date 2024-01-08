USE HwData

SELECT ID,
       Name,
	   Salary,
	   ROW_NUMBER () OVER (ORDER BY Salary DESC) AS SalaryRank 
FROM employees;

--6.2 Rank employees within each department based on their salary.
SELECT ID,
       Name,
	   Department,
	   Salary,
	   DENSE_RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS SalaryRank
FROM employees;

--6.3 Use DENSE_RANK() to rank projects by their duration for each employee.
SELECT * FROM project_assignments;

SELECT EmployeeID,
       DATEDIFF(day, StartDate, EndDate) AS Duration,
       DENSE_RANK () OVER ( PARTITION BY EmployeeID ORDER BY DATEDIFF(day, StartDate, EndDate) DESC ) AS DurationRank
FROM project_assignments ;


--6.4 List employees who are in the top 5 salaries in their department and are currently working on more than one project.
WITH joined_table AS (
SELECT ID AS EmplyeeID,
       Department,
	   Salary,
       DENSE_RANK () OVER (PARTITION BY Department ORDER BY Salary DESC) AS SalaryRank,
	   COUNT (ProjectID) OVER ( PARTITION BY t1.EmployeeID) AS NumberOfProject
FROM employees
LEFT JOIN project_assignments AS t1
ON t1.EmployeeID = employees.ID
)
SELECT * FROM joined_table
WHERE SalaryRank < 6 AND NumberOfProject > 1;