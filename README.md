# PrivateAirport
Database Assignment 03 I210841, I210436

## ERD Explanation / Q1

## Assumptions Taken: 
### Q2 Create all required tables in SQL and then Insert at least 20 dummy data into each table.
```Took the assumption that Category could be formed in the person table which would specify if the owner is a 'Corporation' or 'Individual'. Later realised that a superclass implementation would be better but this still works with the data model without flaws.```
### Q14 Write a SQL query to find the names and phone numbers of owners who have purchased a plane from a corporation that has a hangar in the same location as the owner.
```Purchashing from corporations was not the part of the data model given to us, Neither was hangars owned by corporations. Since these things werent specified, The query finds the names and phone numbers of owners with location same as hangars as it is the closest implementation```
### Q18 Write a SQL query to find the names and addresses of owners who have purchased a plane from a corporation that has also purchased a plane of the same type in the past month.
```Again since purchashing from corporations was not the part of the data model given to us, The query just finds the owners who have purchased a plane in the past month and A corporation has also purchased the same type of plane```




