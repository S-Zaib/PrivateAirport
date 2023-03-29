--Q10
SELECT TOP 1 [Location], Capacity - COUNT(Reg#) AS Available_Space
FROM HANGAR
LEFT JOIN AIRPLANE ON HANGAR.Number = AIRPLANE.STORED_IN
GROUP BY HANGAR.Number, [Location], Capacity
ORDER BY Available_Space DESC;
