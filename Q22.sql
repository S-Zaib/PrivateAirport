--q25
--1. A query to see total hours of work put in by each employee to see who is really giving it their all :)
SELECT [Name], SUM([Hours]) as total_hours
FROM PERSON
JOIN OWNS ON PERSON.Ssn = OWNS.Ssn
JOIN AIRPLANE ON OWNS.Reg# = AIRPLANE.Reg#
JOIN PLANE_SERVICE ON AIRPLANE.Reg# = PLANE_SERVICE.Reg#
JOIN [SERVICE] ON PLANE_SERVICE.SERVICE_ID = [SERVICE].SERVICE_ID
GROUP BY [Name]
ORDER BY total_hours DESC


--2. A query to see the hangar with the Max Capacity to see where we could fit the most planes without having to worry about space :)
SELECT Number, Capacity
FROM HANGAR
WHERE Capacity = (SELECT MAX(Capacity) FROM HANGAR);

--3. A query to see how many different Corporations and different Individuals have purchased planes so far. 
SELECT Category, COUNT(DISTINCT Ssn) AS Num_Purchasers
FROM PERSON
WHERE Ssn IN (SELECT Ssn FROM OWNS)
GROUP BY Category
ORDER BY Category ASC;

--4. A query to see how many pilots vs employees are there. 
SELECT COUNT(*) AS TotalPilots, (SELECT COUNT(*) FROM EMPLOYEE) AS TotalEmployees
FROM PILOT;

