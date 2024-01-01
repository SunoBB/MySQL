USE HwData

SELECT *
FROM employees e
LEFT JOIN project_assignments pa ON e.ID = pa.EmployeeID;


SELECT e.Name, e.Department, pa.ProjectName
FROM employees e
LEFT JOIN project_assignments pa ON e.ID = pa.EmployeeID;

SELECT COUNT(e.Name) AS total_nv, e.Department, COUNT(pa.ProjectName) AS total_prj
FROM employees e
LEFT JOIN project_assignments pa ON e.ID = pa.EmployeeID
GROUP BY e.Department;


SELECT e.Name
FROM employees e
LEFT JOIN project_assignments pa ON e.ID = pa.EmployeeID
WHERE pa.ProjectID IS NULL;