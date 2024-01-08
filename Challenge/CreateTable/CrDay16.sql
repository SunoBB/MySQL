USE HwData

drop table department_budgets
CREATE TABLE department_budgets (
    Department VARCHAR(255) PRIMARY KEY,
    Budget DECIMAL(10, 2) -- Adjust the precision and scale as needed
);

INSERT INTO department_budgets (Department, Budget)
VALUES
    ('Engineering', 1000000.00),
    ('HR', 500000.00);