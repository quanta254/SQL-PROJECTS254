--aliasing


select Demo.FirstName, Sal.Salary
from EmployeeDemographics as Demo
join Employeesalary1 as Sal
on Demo.EmployeeID = Sal.EmployeeID
order by Sal.Salary


--partition by

select FirstName, Lastname, Salary, count(Gender) over (partition by Gender) as CountGender
from EmployeeDemographics as demo
join EmployeeSalary1 as sal
on demo.EmployeeID = sal.EmployeeID
order by Salary

--CTEs'


with CTE_Employee as
(select FirstName, LastName, Salary, count(Gender) over (partition by Gender) TotalGender, avg(Salary) over (partition by Gender) AvgSalary
from EmployeeDemographics as demo
join EmployeeSalary1 as sal
on demo.EmployeeID = sal.EmployeeID
where salary >10000)
select *
from CTE_Employee

--temp tables

drop table if exists #temp_Employee
create table #temp_Employee
(EmployeeID int, FirstName varchar(50), LastName varchar(50), Salary int)


insert into #temp_Employee
select demo.EmployeeID, FirstName, LastName, Salary
from EmployeeDemographics as demo
join EmployeeSalary1 as sal
on demo.EmployeeID = sal.EmployeeID

select*
from #temp_Employee

--trim, ltrim, rtrim, substring, replace, upper and lower case


drop table if exists EmployeeError
create table EmployeeError
(EmployeeID varchar(50), FirstName varchar(50), LastName varchar(50))

insert into EmployeeError values
( '    1001', 'Frank', 'Ojure-Joe'),
('1002    ', 'Richard', 'Wanga'),
('1003', 'Leila', 'Akinyi')

select LastName, replace(LastName,'-Joe', '') as LastNameReplaced
from EmployeeError


select EmployeeID, ltrim(EmployeeID)
from EmployeeError

select FirstName, lower(Firstname)
from EmployeeError

select FirstName, substring(FirstName,1,3) as SubName
from EmployeeError


--# stored procedures

CREATE PROCEDURE TEST
AS 
SELECT*
FROM EmployeeDemographics

EXEC TEST

select*
from EmployeeSalary1





















