CREATE TABLE EmployeeDemographics 
(EmployeeID int, FirstName varchar(50), LastName varchar(50), Age int, Gender varchar(50))


CREATE TABLE EmployeeSalary1 
(EmployeeID int, JobDescription varchar(50), Salary int)

INSERT INTO EmployeeDemographics VALUES
(1003, 'Richard', 'Otieno', 28, 'male'),
(1004, 'Leila', 'Akinyi', 35, 'female'), 
(1005, 'Rose', 'Kadenge', 45, 'female'),
(1006, 'george', 'Foreman', 67, 'male')

INSERT INTO EmployeeSalary1 VALUES
(1001, 'Accountant', 40000),
(1002, 'HR', 45000),
(1003, 'Engineer', 60000),
(1004, 'Doctor', 80000),
(1005, 'Plumber', 50000),
(1006, 'Teacher', 35000)
