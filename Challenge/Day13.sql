USE HwData


SELECT Name FROM employees
UNION 
SELECT Department FROM department_budgets;

SELECT Department FROM department_budgets
EXCEPT 
SELECT name FROM employees;

SELECT name FROM employees
WHERE Level = 'Senior'
UNION ALL
SELECT Department FROM department_budgets;

SELECT Department FROM department_budgets
EXCEPT 
SELECT NAME FROM employees AS t1
LEFT JOIN Department AS t2
ON employees.department = department_budgets.Department
WHERE Level = 'Senior';