--q21
SELECT Reg#, COUNT(*) AS Total_Services_Performed
FROM PLANE_SERVICE
GROUP BY Reg#;