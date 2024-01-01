

SELECT Name FROM Employees
UNION 
SELECT Department FROM department_budget

SELECT Department FROM department_budget
EXCEPT 
SELECT name FROM Employees

SELECT name FROM Employees
WHERE Level = 'Senior'
UNION ALL
SELECT Department FROM department_budget

SELECT Department FROM department_budget
EXCEPT 
SELECT NAME FROM Employees AS t1
LEFT JOIN Department AS t2
ON employees.department = department_budget.Department
WHERE Level = 'Senior'