SELECT *
FROM EmployeeDemographics
ORDER BY Age


SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
WHERE Age > 30
GROUP BY Gender







