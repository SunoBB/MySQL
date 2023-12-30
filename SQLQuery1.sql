CREATE DATABASE DBStudent
USE DBStudent

CREATE TABLE Student (
    MSV NVARCHAR(5) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);


CREATE TABLE Point (
    MSV NVARCHAR(5) PRIMARY KEY,
    Math Decimal(10, 2),
    IT Decimal(10, 2),
	FOREIGN KEY (MSV) REFERENCES Student(MSV)

);


CREATE TABLE Infor (
	MSV NVARCHAR(5) PRIMARY KEY,
	Email NVARCHAR(255),
	Phone CHAR(15),
	FOREIGN KEY (MSV) REFERENCES Student(MSV)
);




INSERT INTO Student (MSV, FirstName, LastName)
VALUES
  ('001', 'John', 'Doe'),
  ('002', 'Jane', 'Smith'),
  ('003', 'Michael', 'Johnson'),
  ('004', 'Emily', 'Williams'),
  ('005', 'Daniel', 'Brown'),
  ('006', 'Sophia', 'Lee'),
  ('007', 'David', 'Kim'),
  ('008', 'Olivia', 'Jones'),
  ('009', 'Ethan', 'Taylor'),
  ('010', 'Ava', 'Martinez');

-- Insert data into the Point table
INSERT INTO Point (MSV, Math, IT)
VALUES
  ('001', 90.5, 85.2),
  ('002', 78.3, 92.7),
  ('003', 95.0, 88.1),
  ('004', 87.2, 94.5),
  ('005', 91.8, 79.6);

-- Insert data into the Infor table
INSERT INTO Infor (MSV, Email, Phone)
VALUES
  ('001', 'john.doe@email.com', '123-456-7890'),
  ('002', 'jane.smith@email.com', '234-567-8901'),
  ('003', 'michael.johnson@email.com', '345-678-9012');

SELECT *
FROM Student s
LEFT JOIN  Point p ON p.MSV = s.MSV
LEFT JOIN Infor i ON i.MSV = s.MSV;