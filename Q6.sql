--Q9
SELECT p.Ssn, COUNT(DISTINCT f.OF_TYPE) AS Num_Authorized_Planes
FROM PILOT p
JOIN FLIES f ON p.Ssn = f.Ssn
GROUP BY p.Ssn;