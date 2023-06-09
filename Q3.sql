--Q6
SELECT TOP 5 E.Ssn, P.Name, SUM(S.Hours) AS TotalMaintenanceHours
FROM EMPLOYEE E
JOIN PERSON P ON E.Ssn = P.Ssn
JOIN MAINTAINS M ON E.Ssn = M.Ssn
JOIN [SERVICE] S ON M.SERVICE_ID = S.SERVICE_ID
GROUP BY E.Ssn, P.Name
ORDER BY TotalMaintenanceHours DESC;