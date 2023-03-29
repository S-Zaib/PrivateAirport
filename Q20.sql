--q23
SELECT p.Ssn, p.Name, COUNT(Reg#) AS Total_Planes
FROM OWNS o join PERSON p on o.Ssn = p.Ssn
GROUP BY p.Ssn, p.Name