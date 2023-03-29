--Q11
SELECT p.Name, COUNT(o.Reg#) AS 'Num_planes'
FROM PERSON p
LEFT JOIN OWNS o ON o.Ssn = p.Ssn
WHERE p.Category = 'Corporation'
GROUP BY p.Name
ORDER BY COUNT(o.Reg#) DESC;
