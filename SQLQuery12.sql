select JobDescription, avg(Salary)
from [sql tutorial].dbo.EmployeeDemographics 
join EmployeeSalary1
on EmployeeDemographics.EmployeeID = EmployeeSalary1.EmployeeID
group by JobDescription
having avg(Salary) > 10000
order by avg(Salary)

select *
from EmployeeDemographics

update EmployeeDemographics
set LastName = 'Imbira'
where FirstName = 'Rose' and LastName = 'Kadenge'


delete from EmployeeDemographics
where Age = 35

select *
from EmployeeDemographics


insert into EmployeeDemographics values
(1003, 'Dan', 'Sulivan', 29, 'Male'),
(1004, 'Matabel', 'Odin', 49, 'female')


 