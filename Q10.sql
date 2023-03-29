--Q13
SELECT DISTINCT p.Name
FROM PERSON p
JOIN OWNS o ON o.Ssn = p.Ssn
JOIN AIRPLANE a ON a.Reg# = o.Reg#
JOIN PLANE_TYPE pt ON pt.Model = a.OF_TYPE
JOIN PLANE_SERVICE ps ON ps.Reg# = a.Reg#
JOIN [SERVICE] s ON s.SERVICE_ID = ps.SERVICE_ID
JOIN MAINTAINS m ON m.SERVICE_ID = s.SERVICE_ID
JOIN EMPLOYEE e ON e.Ssn = m.Ssn
LEFT JOIN WORKS_ON w ON w.Model = pt.Model AND w.Ssn = e.Ssn
WHERE w.Ssn IS NULL