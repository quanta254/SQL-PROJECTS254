SELECT EmployeeDemographics.EmployeeID, FirstName, LastName,  Salary, JobDescription
FROM EmployeeDemographics
inner join EmployeeSalary1
on EmployeeDemographics.EmployeeID = EmployeeSalary1.EmployeeID
where Salary > 50000
order by Salary desc



select *
from EmployeeSalary1



SELECT JobDescription, avg(Salary) AS  AvgSalary
FROM EmployeeDemographics
full outer join EmployeeSalary1
on EmployeeDemographics.EmployeeID = EmployeeSalary1.EmployeeID
where JobDescription = 'HR'

group by JobDescription

select JobDescription, Salary
from EmployeeSalary1
union all
select Lastname, Age
from EmployeeDemographics


select FirstName, LastName, Age,
CASE
when Age > 28 then 'old'
else 'young'
end
from EmployeeDemographics
where Age is not null
order by Age


select JobDescription, Salary, 
case
when JobDescription  = 'Engineer' then Salary + (Salary *.15)
end as NewSalary
from EmployeeSalary1

