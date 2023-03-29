USE MASTER
DROP DATABASE PrivateAirport
CREATE DATABASE PrivateAirport

USE PrivateAirport
CREATE TABLE PLANE_TYPE (
  Model VARCHAR(50) PRIMARY KEY,
  Capacity INT NOT NULL,
  [Weight] FLOAT NOT NULL
);

CREATE TABLE HANGAR (
  Number INT PRIMARY KEY,
  Capacity INT NOT NULL,
  [Location] VARCHAR(100) NOT NULL
);

CREATE TABLE [SERVICE] (
  SERVICE_ID INT PRIMARY KEY,
  [Date] DATE NOT NULL,
  [Hours] INT NOT NULL,
  Work_done VARCHAR(100) NOT NULL
);

CREATE TABLE AIRPLANE (
  Reg# VARCHAR(10) PRIMARY KEY,
  OF_TYPE VARCHAR(50) NOT NULL,
  STORED_IN INT NOT NULL,
  FOREIGN KEY (OF_TYPE) REFERENCES PLANE_TYPE(Model),
  FOREIGN KEY (STORED_IN) REFERENCES HANGAR(Number)
);

CREATE TABLE PLANE_SERVICE (
  Reg# VARCHAR(10) NOT NULL,
  SERVICE_ID INT NOT NULL,
  PRIMARY KEY (Reg#, SERVICE_ID),
  FOREIGN KEY (Reg#) REFERENCES AIRPLANE(Reg#),
  FOREIGN KEY (SERVICE_ID) REFERENCES [SERVICE](SERVICE_ID)
);

CREATE TABLE PERSON (
  Ssn INT PRIMARY KEY,
  [Name] VARCHAR(100) NOT NULL,
  [Address] VARCHAR(200) NOT NULL,
  Phone VARCHAR(20) NOT NULL,
  Category VARCHAR(20) NOT NULL CHECK(Category IN('Individual', 'Corporation'))
);

CREATE TABLE EMPLOYEE (
  Ssn INT PRIMARY KEY,
  Salary FLOAT NOT NULL,
  [Shift] VARCHAR(20) NOT NULL,
  FOREIGN KEY (Ssn) REFERENCES PERSON(Ssn)
);

CREATE TABLE PILOT (
  Ssn INT PRIMARY KEY,
  Lic_num VARCHAR(50) NOT NULL,
  Restr VARCHAR(50) NOT NULL,
  FOREIGN KEY (Ssn) REFERENCES PERSON(Ssn)
);

CREATE TABLE WORKS_ON (
  Ssn INT NOT NULL,
  Model VARCHAR(50) NOT NULL,
  PRIMARY KEY (Ssn, Model),
  FOREIGN KEY (Ssn) REFERENCES EMPLOYEE(Ssn),
  FOREIGN KEY (Model) REFERENCES PLANE_TYPE(Model)
);

CREATE TABLE MAINTAINS (
  Ssn INT NOT NULL,
  SERVICE_ID INT NOT NULL,
  PRIMARY KEY (Ssn, SERVICE_ID),
  FOREIGN KEY (Ssn) REFERENCES EMPLOYEE(Ssn),
  FOREIGN KEY (SERVICE_ID) REFERENCES [SERVICE](SERVICE_ID)
);

CREATE TABLE FLIES (
  Ssn INT NOT NULL,
  OF_TYPE VARCHAR(50) NOT NULL,
  PRIMARY KEY (Ssn, OF_TYPE),
  FOREIGN KEY (Ssn) REFERENCES PILOT(Ssn),
  FOREIGN KEY (OF_TYPE) REFERENCES PLANE_TYPE(Model)
);

CREATE TABLE OWNS (
  Reg# VARCHAR(10) NOT NULL,
  Ssn INT NOT NULL,
  Pdate DATE NOT NULL,
  PRIMARY KEY (Reg#, Ssn),
  FOREIGN KEY (Reg#) REFERENCES AIRPLANE(Reg#),
  FOREIGN KEY (Ssn) REFERENCES PERSON(Ssn)
);