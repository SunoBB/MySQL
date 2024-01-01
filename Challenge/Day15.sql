SELECT e.Name, db.Budget 
FROM employees e 
LEFT JOIN department_budgets db ON e.Department = db.Department;

SELECT db.Department, e.Name 
FROM employees e 
RIGHT JOIN department_budgets db ON e.Department = db.Department;

SELECT db.Department, COUNT(e.ID) as EmployeeCount
FROM department_budgets db
LEFT JOIN employees e ON db.Department = e.Department
GROUP BY db.Department;

SELECT db.Department, 
       COALESCE(SUM(e.Salary), 0) AS TotalSalary, 
       db.Budget, 
       CASE 
           WHEN COALESCE(SUM(e.Salary), 0) = 0 THEN 'No Employees'
           WHEN COALESCE(SUM(e.Salary), 0) > db.Budget THEN 'Over Budget'
           ELSE 'Under Budget'
       END AS BudgetStatus
FROM department_budgets db
LEFT JOIN employees e ON db.Department = e.Department
GROUP BY db.Department, db.Budget;