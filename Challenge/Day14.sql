SELECT d.Department
FROM Department_budgets AS d
INNER JOIN (SELECT Department, SUM(Salary) AS total_salary
            FROM employees
            GROUP BY Department) AS s
ON d.Department = s.Department
WHERE d.Budget < s.total_salary;

SELECT e.Name, d.Budget
FROM employees AS e
INNER JOIN department_budgets AS d
ON e.Department = d.Department
WHERE e.Department = 'Engineering';

SELECT Department, MAX(Salary) AS MaxSalary
FROM employees
GROUP BY Department;

SELECT e.Name, s.Budget
FROM employees AS e
INNER JOIN 
	(
		SELECT * 
		FROM 
		department_budgets as d
		WHERE 0.75*d.Budget < (
			SELECT AVG(Salary) 
			FROM employees 
			WHERE employees.Department = d.Department)
	) AS s
ON e.Department = s.Department;