--Q4
SELECT PERSON.Name, PERSON.Address
FROM PERSON
JOIN OWNS ON OWNS.Ssn = PERSON.Ssn
JOIN AIRPLANE a ON a.Reg# = OWNS.Reg#
JOIN PLANE_TYPE pt ON pt.Model = a.OF_TYPE
WHERE PERSON.Category = 'Corporation' AND pt.Capacity > 200;