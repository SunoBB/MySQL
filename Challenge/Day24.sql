USE HwData;

SELECT DISTINCT employeeid, 
        FIRST_VALUE(projectid) OVER (PARTITION BY employeeid ORDER BY startdate) AS first_pj,
        LAST_VALUE(projectid) OVER (PARTITION BY employeeid ORDER BY startdate RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_pj
FROM project_assignments
ORDER BY 1;

--b) Determine the earliest and latest start dates for projects in each department.
SELECT DISTINCT e.department, 
        FIRST_VALUE(pa.startdate) OVER (PARTITION BY e.department ORDER BY pa.startdate) AS first_pj,
        LAST_VALUE(pa.startdate) OVER (PARTITION BY e.department ORDER BY pa.startdate RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_pj
FROM project_assignments pa 
JOIN employees e 
ON pa.employeeid = e.id;

--c) List employees alongside the highest and lowest salaries in their department.
SELECT Name,
        FIRST_VALUE(salary) OVER (PARTITION BY department ORDER BY salary) AS lowest_dep_salary,
        LAST_VALUE(salary) OVER (PARTITION BY department ORDER BY salary RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS highest_dep_salary
FROM employees;

--d) For each project, find the employee who started first and the one who started last.
SELECT DISTINCT projectid,
        FIRST_VALUE(employeeid) OVER (PARTITION BY projectid ORDER BY startdate) AS first_start,
        LAST_VALUE(employeeid) OVER (PARTITION BY projectid ORDER BY startdate RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_start
FROM project_assignments;