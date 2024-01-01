USE HwData


CREATE TABLE employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Level VARCHAR(20),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO employees (ID, Name, Age, Level, Department, Salary) VALUES
(1, 'Alice', 30, 'Senior', 'Engineering', 90000.00),
(2, 'Bob', 22, 'Junior', 'Marketing', 50000.00),
(3, 'Charlie', 28, 'Middle', 'HR', 65000.00),
(4, 'David', 35, 'Senior', 'Engineering', 95000.00),
(5, 'Eva', 26, 'Middle', 'Sales', 60000.00),
(6, 'Frank', 29, 'Senior', 'Marketing', 80000.00),
(7, 'Grace', 32, 'Senior', 'HR', 85000.00),
(8, 'Helen', 24, 'Junior', 'Sales', 48000.00),
(9, 'Ian', 31, 'Middle', 'Engineering', 70000.00),
(10, 'Judy', 27, 'Junior', 'Marketing', 52000.00);

CREATE TABLE project_assignments (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(50),
    EmployeeID INT,
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES employees(ID)
);
INSERT INTO project_assignments (ProjectID, ProjectName, EmployeeID, StartDate, EndDate) VALUES
(101, 'Project Alpha', 1, '2022-01-15', '2022-06-30'),
(102, 'Project Beta', 2, '2022-02-01', '2022-07-15'),
(103, 'Project Gamma', 3, '2022-03-01', '2022-08-31'),
(104, 'Project Delta', 4, '2022-04-01', '2022-09-30'),
(105, 'Project Epsilon', 5, '2022-05-05', '2022-10-20'),
(106, 'Project Zeta', 6, '2022-06-10', '2022-11-15'),
(107, 'Project Eta', 7, '2022-07-15', '2022-12-31'),
(108, 'Project Theta', 8, '2022-08-01', '2023-01-20'),
(109, 'Project Iota', 9, '2022-09-10', '2023-02-25'),
(110, 'Project Kappa', 10, '2022-10-15', '2023-03-30'),
(111, 'Project Lambda', 1, '2022-01-20', '2022-07-05'),
(112, 'Project Mu', 2, '2022-02-15', '2022-08-10'),
(113, 'Project Nu', 3, '2022-03-20', '2022-09-15'),
(114, 'Project Xi', 4, '2022-04-25', '2022-10-30'),
(115, 'Project Omicron', 5, '2022-05-30', '2022-11-05'),
(116, 'Project Pi', 6, '2022-07-05', '2023-01-10'),
(117, 'Project Rho', 7, '2022-08-15', '2023-02-20'),
(118, 'Project Sigma', 8, '2022-09-20', '2023-03-25'),
(119, 'Project Tau', 9, '2022-10-25', '2023-04-30'),
(120, 'Project Upsilon', 10, '2022-11-30', '2023-05-05');

ALTER TABLE employees
ADD  Marriage VARCHAR(10),
 Qualification VARCHAR(50),
 Location VARCHAR(50);
UPDATE employees SET Marriage = 'Married', Qualification = 'PhD', Location = 'New York' WHERE ID = 1;
UPDATE employees SET Marriage = 'Single', Qualification = 'Bachelors', Location = 'San Francisco' WHERE ID = 2;
UPDATE employees SET Marriage = 'Married', Qualification = 'Masters', Location = 'Chicago' WHERE ID = 3;
UPDATE employees SET Marriage = 'Single', Qualification = 'PhD', Location = 'Seattle' WHERE ID = 4;
UPDATE employees SET Marriage = 'Single', Qualification = 'Masters', Location = 'Boston' WHERE ID = 5;
UPDATE employees SET Marriage = 'Married', Qualification = 'Masters', Location = 'Austin' WHERE ID = 6;
UPDATE employees SET Marriage = 'Single', Qualification = 'PhD', Location = 'Denver' WHERE ID = 7;
UPDATE employees SET Marriage = 'Married', Qualification = 'Bachelors', Location = 'Miami' WHERE ID = 8;
UPDATE employees SET Marriage = 'Single', Qualification = 'Masters', Location = 'Atlanta' WHERE ID = 9;
UPDATE employees SET Marriage = 'Married', Qualification = 'Bachelors', Location = 'Dallas' WHERE ID = 10;
INSERT INTO employees (ID, Name, Age, Level, Department, Salary, Marriage, Qualification, Location) VALUES
(11, 'Kyle', 30, 'Senior', 'IT', 92000.00, 'Married', 'Masters', 'New York'),
(12, 'Liam', 25, 'Junior', 'Sales', 48000.00, 'Single', 'Bachelors', 'Chicago'),
(13, 'Mia', 35, 'Middle', 'HR', 68000.00, 'Married', 'Masters', 'San Francisco'),
(14, 'Noah', 28, 'Senior', 'Engineering', 96000.00, 'Single', 'Masters', 'Boston'),
(15, 'Olivia', 24, 'Junior', 'Marketing', 51000.00, 'Single', 'Bachelors', 'Seattle'),
(16, 'Pam', 40, 'Middle', 'Sales', 63000.00, 'Married', 'Masters', 'Miami'),
(17, 'Quinn', 38, 'Senior', 'IT', 87000.00, 'Married', 'PhD', 'Austin'),
(18, 'Ryan', 27, 'Junior', 'HR', 47000.00, 'Single', 'Bachelors', 'Denver'),
(19, 'Sophia', 31, 'Middle', 'Engineering', 73000.00, 'Married', 'Masters', 'Atlanta'),
(20, 'Tyler', 29, 'Senior', 'Sales', 81000.00, 'Single', 'Masters', 'Dallas'),
(21, 'Uma', 33, 'Senior', 'Marketing', 85000.00, 'Married', 'Masters', 'Portland'),
(22, 'Victor', 23, 'Junior', 'IT', 45000.00, 'Single', 'Bachelors', 'Philadelphia'),
(23, 'Wendy', 37, 'Middle', 'HR', 71000.00, 'Married', 'Masters', 'San Diego'),
(24, 'Xavier', 26, 'Junior', 'Engineering', 54000.00, 'Single', 'Bachelors', 'Las Vegas'),
(25, 'Yara', 39, 'Senior', 'Sales', 89000.00, 'Married', 'PhD', 'Houston'),
(26, 'Zane', 41, 'Middle', 'Marketing', 77000.00, 'Married', 'Masters', 'Phoenix'),
(27, 'Amy', 32, 'Senior', 'IT', 93000.00, 'Single', 'Masters', 'Los Angeles'),
(28, 'Brian', 34, 'Junior', 'HR', 56000.00, 'Married', 'Bachelors', 'San Jose'),
(29, 'Cara', 36, 'Middle', 'Engineering', 70000.00, 'Single', 'Masters', 'New Orleans'),
(30, 'Duke', 42, 'Senior', 'Sales', 95000.00, 'Married', 'PhD', 'Washington D.C.');
INSERT INTO employees (ID, Name, Age, Level, Department, Salary, Marriage, Qualification, Location) VALUES
(31, 'Ellen', 28, 'Middle', 'HR', 66000.00, 'Single', 'Masters', 'Chicago'),
(32, 'Franklin', 37, 'Senior', 'Engineering', 98000.00, 'Married', 'PhD', 'Seattle'),
(33, 'Georgia', 24, 'Junior', 'Marketing', 49000.00, 'Single', 'Bachelors', 'New York'),
(34, 'Hank', 31, 'Middle', 'Sales', 69000.00, 'Married', 'Masters', 'San Francisco'),
(35, 'Isla', 35, 'Senior', 'IT', 91000.00, 'Single', 'Masters', 'Boston'),
(36, 'Jack', 23, 'Junior', 'HR', 46000.00, 'Single', 'Bachelors', 'Miami'),
(37, 'Katie', 39, 'Senior', 'Engineering', 87000.00, 'Married', 'PhD', 'Austin'),
(38, 'Leo', 26, 'Junior', 'Sales', 52000.00, 'Single', 'Bachelors', 'Denver'),
(39, 'Megan', 32, 'Middle', 'Marketing', 72000.00, 'Married', 'Masters', 'Atlanta'),
(40, 'Nathan', 29, 'Senior', 'IT', 84000.00, 'Single', 'Masters', 'Dallas'),
(41, 'Oliver', 33, 'Senior', 'HR', 88000.00, 'Married', 'Masters', 'Portland'),
(42, 'Piper', 27, 'Junior', 'Engineering', 53000.00, 'Single', 'Bachelors', 'Philadelphia'),
(43, 'Quincy', 36, 'Middle', 'Sales', 75000.00, 'Married', 'Masters', 'San Diego'),
(44, 'Rachel', 38, 'Senior', 'Marketing', 96000.00, 'Single', 'PhD', 'Las Vegas'),
(45, 'Sam', 40, 'Middle', 'IT', 78000.00, 'Married', 'Masters', 'Houston'),
(46, 'Tina', 42, 'Senior', 'HR', 99000.00, 'Married', 'PhD', 'Phoenix'),
(47, 'Umar', 25, 'Junior', 'Engineering', 51000.00, 'Single', 'Bachelors', 'Los Angeles'),
(48, 'Violet', 34, 'Middle', 'Sales', 67000.00, 'Married', 'Masters', 'San Jose'),
(49, 'Will', 30, 'Senior', 'Marketing', 90000.00, 'Single', 'Masters', 'New Orleans'),
(50, 'Xena', 22, 'Junior', 'IT', 45000.00, 'Single', 'Bachelors', 'Washington D.C.'),
(51, 'Yvonne', 41, 'Middle', 'HR', 77000.00, 'Married', 'Masters', 'Chicago'),
(52, 'Zack', 35, 'Senior', 'Engineering', 95000.00, 'Single', 'PhD', 'Seattle'),
(53, 'Amber', 29, 'Junior', 'Sales', 48000.00, 'Married', 'Bachelors', 'New York'),
(54, 'Brad', 33, 'Middle', 'Marketing', 71000.00, 'Single', 'Masters', 'San Francisco'),
(55, 'Claire', 26, 'Junior', 'IT', 50000.00, 'Single', 'Bachelors', 'Boston'),
(56, 'Derek', 38, 'Senior', 'HR', 86000.00, 'Married', 'PhD', 'Miami'),
(57, 'Elaine', 27, 'Junior', 'Engineering', 54000.00, 'Single', 'Bachelors', 'Austin'),
(58, 'Felix', 39, 'Middle', 'Sales', 73000.00, 'Married', 'Masters', 'Denver'),
(59, 'Gina', 42, 'Senior', 'Marketing', 98000.00, 'Single', 'PhD', 'Atlanta'),
(60, 'Howard', 24, 'Junior', 'IT', 47000.00, 'Single', 'PhD', 'Austin');


a) List all employees, their departments,
and assigned projects, including those without projects.

b) Display the departments along with the 
names of employees who are currently working on projects.

c) Show the total number of employees and 
total number of projects for each department.

d) Identify employees who are not working on any project despite
their department having an allocated budget.
