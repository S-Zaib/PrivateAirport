--q14
SELECT p.Name, p.Phone from PERSON p 
join OWNS o on o.Ssn = p.Ssn 
join airplane a on a.Reg# = o.Reg#
join HANGAR h on h.Number = a.STORED_IN
where h.Location = p.Address