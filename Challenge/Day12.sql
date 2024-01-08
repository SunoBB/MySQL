USE HwData

/*
 a) Find the names of employees who earn more than the average salary in the 'Marketing' department.
 b) List all departments that have a higher budget than the total salary of their employees.
 c) Identify employees who are the sole earners in their department.
 d) Increase the salary by 15% for employees who earn less than the average salary of all employees in departments with more than 5 employees.
*/

/*Day 12 */
SELECT *
FROM employees;

SELECT Name
FROM employees
WHERE salary > (
SELECT AVG(salary)
FROM employees
WHERE department = 'Marketing'
);

SELECT dp.Department
FROM department_budgets dp
WHERE budget > (
SELECT SUM(salary)
FROM employees e
WHERE e.Department = dp.Department
)

SELECT e.Name AS EmployeeName, e.Department
FROM employees e
WHERE NOT EXISTS (
    SELECT 1
    FROM employees e2
    WHERE e.Department = e2.Department AND e.ID <> e2.ID
);

BEGIN TRANSACTION;
UPDATE employees
SET Salary = Salary * 1.15
WHERE Salary < (SELECT AVG(Salary) FROM employees)
AND Department IN (
    SELECT Department FROM employees 
    GROUP BY Department 
    HAVING COUNT(*) > 5
);
SELECT *
FROM employees

ROLLBACK;
select *
from employees;