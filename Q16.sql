--q19
SELECT h.Number as Hanger_Number, COUNT(a.Reg#) as 'Total Planes'
FROM HANGAR h 
LEFT JOIN AIRPLANE a ON h.Number = a.STORED_IN
GROUP BY h.Number