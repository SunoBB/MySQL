USE HwData

SELECT e.Name, db.Budget
FROM employees e
CROSS JOIN department_budgets db;

SELECT 
    e1.Name AS EmployeeName, 
    db.Department, 
    db.Budget,
    CASE
        WHEN e2.ID IS NOT NULL THEN 'Has Namesake In Department'
        ELSE 'No Namesake In Department'
    END AS NamesakeStatus
FROM employees e1
CROSS JOIN department_budgets db
LEFT JOIN 
	employees e2 ON e1.Name = e2.Name 
	AND e1.Department = e2.Department 
	AND e1.ID <> e2.ID;

SELECT e.Name AS EmployeeName, db.Department
FROM employees e
CROSS JOIN department_budgets db
WHERE db.Department IN ('Engineering', 'HR');

SELECT e.Name AS EmployeeName, db.Department
FROM employees e
CROSS JOIN department_budgets db
WHERE db.Department IN ('Engineering', 'HR');