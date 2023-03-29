--q24
SELECT ps.Name, COUNT(DISTINCT f.OF_TYPE) AS Num_Planes_Authorized
FROM PILOT p
JOIN FLIES f ON p.Ssn = f.Ssn
JOIN PERSON ps on p.Ssn = ps.Ssn
GROUP BY p.Ssn, ps.Name
ORDER BY Num_Planes_Authorized DESC;