--Q7
SELECT p.Name, a.Reg#
FROM PERSON p
JOIN OWNS o ON p.Ssn = o.Ssn
JOIN AIRPLANE a ON o.Reg# = a.Reg#
JOIN PLANE_SERVICE ps ON a.Reg# = ps.Reg#
JOIN SERVICE s ON ps.SERVICE_ID = s.SERVICE_ID
WHERE s.Date >= DATEADD(day, -7, GETDATE())