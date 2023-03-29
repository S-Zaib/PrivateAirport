# PrivateAirport
Database Assignment 03 shahzaib irfan I210841, Ahmad Moazam I210436

## ERD Explanation / Q1

AIRPLANE entity has attributes: registration number (Reg#), plane type (OF_TYPE), and hangar (STORED_IN). It is related to PLANE_TYPE and HANGAR entities via many-to-one (M:1) relationships, as each airplane can only be of one type and stored in one hangar, but each type and hangar can have many airplanes. 

PLANE_TYPE entity has attributes: model number (Model), capacity (Capacity), and weight (Weight). It is related to AIRPLANE entity via a one-to-many (1:M) relationship, as each type can have many airplanes but each airplane can only be of one type. It is related to pilot via flies relationship and related to employee via WORKS_ON relationship.

HANGAR entity has attributes: number (Number), capacity (Capacity), and location (Location). It is related to AIRPLANE entity via a one-to-many (1:M) relationship, as each hangar can have many airplanes but each airplane can only be stored in one hangar.

Person entity has attributes: ssn (ssn), name (Name), address (Address), phone(Phone) and category (category) which specifies whether the person is an individual or a corporation. It is related to AIRPLANE entity via the OWNS relationship, which includes the purchase date (Pdate). The relationship is one-to-many (1:M), as each owner can own many airplanes. it is a super class which further subdidivdes into 2 distinct sub classes namely Employee and Pilot.

EMPLOYEE entity has attributes: employee ID (ID), name (Name) and  address (Address) which are derived attributes from person entity. salary (Salary), and shift (Shift) are its own attributes. It is related to AIRPLANE entity via the MAINTAIN relationship, which is (M:N) relationship , as each employee can maintain many airplanes and each airplane can be maintained by many employees. It is also lined to PlaneTYPE via WORKS_ON realtionship signifying the type of plane_type the employee is authorized to work on. It is also linked to Service entity via the service relationship which in Many to many realtionship (M:N)

PILOT entity has attributes: pilot license number (Lic_num) and restrictions (Restr). It is related to PLANE_TYPE entity via the FLIES relationship, which indicates the types of planes each pilot is authorized to fly. The relationship is many-to-many (M:M), as each pilot can fly many types of planes and each type of plane can be flown by many pilots.


SERVICE entity has attributes: service record (SERVICE_ID), date of maintenance (Date), number of hours spent on the work (Hours), and type of work done (Work_code). It is related to AIRPLANE entity via the PLANE_SERVICE relationship, which indicates the service records for each airplane. The relationship is one-to-many (1:M), as each airplane can have many service records but each service record is related to only one airplane. It also has a many to many relationship with EMPLOYEE via the service relationship as it shows an employee can perfrom many services and one service can be performed by many employees.


## Assumptions Taken: 
### Q2 Create all required tables in SQL and then Insert at least 20 dummy data into each table.
```Took the assumption that Category could be formed in the person table which would specify if the owner is a 'Corporation' or 'Individual'. Later realised that a superclass implementation would be better but this still works with the data model without flaws.```
### Q14 Write a SQL query to find the names and phone numbers of owners who have purchased a plane from a corporation that has a hangar in the same location as the owner.
```Purchashing from corporations was not the part of the data model given to us, Neither was hangars owned by corporations. Since these things werent specified, The query finds the names and phone numbers of owners with location same as hangars as it is the closest implementation```
### Q18 Write a SQL query to find the names and addresses of owners who have purchased a plane from a corporation that has also purchased a plane of the same type in the past month.
```Again since purchashing from corporations was not the part of the data model given to us, The query just finds the owners who have purchased a plane in the past month and A corporation has also purchased the same type of plane```




