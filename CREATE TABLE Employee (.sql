CREATE TABLE Employee (
  EmployeeID INT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  DateOfBirth DATE NOT NULL,
  Gender VARCHAR(10) NOT NULL,
  Phone VARCHAR(20) NOT NULL,
  Email VARCHAR(50) NOT NULL,
  HireDate DATE NOT NULL,
  Salary DECIMAL(10,2) NOT NULL,
  DepartmentID INT NOT NULL,
  FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Department (
  DepartmentID INT PRIMARY KEY,
  DepartmentName VARCHAR(50) NOT NULL,
  ManagerID INT NOT NULL,
  FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE SalaryHistory (
  SalaryHistoryID INT PRIMARY KEY,
  EmployeeID INT NOT NULL,
  Salary DECIMAL(10,2) NOT NULL,
  EffectiveDate DATE NOT NULL,
  FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE Leave (
  LeaveID INT PRIMARY KEY,
  EmployeeID INT NOT NULL,
  LeaveStartDate DATE NOT NULL,
  LeaveEndDate DATE NOT NULL,
  Reason VARCHAR(100) NOT NULL,
  FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);
INSERT INTO Employee (EmployeeID, FirstName, LastName, DateOfBirth, Gender, Phone, Email, HireDate, Salary, DepartmentID) VALUES 
(253, 'James', 'Dickson', '1980-09-28', 'Male', '253474836', 'jamesdickson@email.com', '2020-01-10', 50000, 345),
(366, 'Jane', 'Dickson', '1985-10-10', 'Female', '974686357', 'janedickson@email.com', '2020-04-20', 60000, 365),
(637, 'Bobby', 'Mcfinrey', '1990-08-06', 'Male', '68643258', 'bobbymcfinrey@email.com', '2021-01-10', 70000, 370),
(898, 'Alice', 'Johnson', '1995-04-25', 'Female', '34278692146', 'alicejohnson@email.com', '2022-04-20', 80000, 370),
(946, 'Mark', 'Webber', '2000-01-01', 'Male', '537854329', 'markwebber@email.com', '2023-01-10', 90000, 345);

INSERT INTO Department (DepartmentID, DepartmentName, ManagerID) VALUES 
(345, 'IT', 1),
(365, 'Sales', 3),
(370, 'Marketing', 5);

INSERT INTO SalaryHistory (SalaryHistoryID, EmployeeID, Salary, EffectiveDate) VALUES 
(0253, 253, 50000, '2020-01-10'),
(0366, 366, 55000, '2021-04-20'),
(0637, 637, 70000, '2020-01-10'),
(0898, 898, 80000, '2021-04-20'),
(096,946, 90000, '2021-01-10');

INSERT INTO Leave (LeaveID, EmployeeID, LeaveStartDate, LeaveEndDate, Reason) VALUES 
(2643, 253, '2022-01-01', '2022-01-10', 'Vacation'),
(3574, 366, '2021-03-01', '2022-03-05', 'Personal Leave'),
(4765, 637, '2021-12-13', '2022-01-03', 'Personal Leave'),
(5803, 898, '2022-04-01', '2022-04-05', 'Family Emergency'),
(6457, 946, '2023-02-12', '2023-03-03', 'Sick Leave');
-- Retrieve all employees
SELECT * FROM Employee;

-- Retrieve employees in a specific department
SELECT * FROM Employee WHERE DepartmentID = 1;

-- Retrieve employee by ID
SELECT * FROM Employee WHERE EmployeeID = 637;

-- Update an employee's salary
UPDATE Employee SET Salary = 60000 WHERE EmployeeID = 366;

-- Delete an employee
DELETE FROM Employee WHERE EmployeeID = 253;
