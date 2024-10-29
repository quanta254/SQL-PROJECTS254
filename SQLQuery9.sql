SELECT TOP (1000) [EmployeeID]
      ,[JobDescription]
      ,[Salary]
  FROM [sql tutorial].[dbo].[EmployeeSalary1]

SELECT MAX(Salary) AS MaxSalary
FROM EmployeeSalary1