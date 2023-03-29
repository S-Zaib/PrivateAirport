INSERT INTO PLANE_TYPE (Model, Capacity, [Weight]) VALUES
('Boeing 747', 660, 485560),
('Boeing 777', 550, 299370),
('Airbus A380', 853, 575000),
('Airbus A350', 440, 268000),
('Embraer E175', 78, 16250),
('Cessna 172', 4, 2400),
('Bombardier Global 7500', 19, 48600),
('Gulfstream G650', 19, 48600),
('Dassault Falcon 8X', 14, 42000),
('Pilatus PC-12', 9, 10700),
('Cirrus SR22', 4, 1350),
('Diamond DA40', 4, 1490),
('Beechcraft Bonanza', 6, 2300),
('Cessna Citation CJ4', 9, 11600),
('HondaJet HA-420', 5, 4300),
('Piper M600', 6, 2500),
('Embraer Phenom 300', 10, 10160),
('Pilatus PC-24', 11, 7500),
('Cessna Citation Longitude', 12, 22270),
('Bombardier Challenger 350', 10, 19960);

INSERT INTO HANGAR (Number, Capacity, [Location]) VALUES
(1, 12, 'St 1, USA'),
(2, 21, 'St 2, USA'),
(3, 13, 'St 3, USA'),
(4, 5, 'St 4, USA'),
(5, 31, 'St 5, USA'),
(6, 25, 'St 6, USA'),
(7, 8, 'St 7, USA'),
(8, 12, 'St 8, USA'),
(9, 18, 'St 9, USA'),
(10, 22, 'St 10, USA'),
(11, 14, 'St 11, USA'),
(12, 6, 'St 12, USA'),
(13, 16, 'St 13, USA'),
(14, 22, 'St 14, USA'),
(15, 16, 'St 15, USA'),
(16, 23, 'St 16, USA'),
(17, 15, 'St 17, USA'),
(18, 5, 'St 18, USA'),
(19, 32, 'St 19, USA'),
(20, 26, 'St 20, USA');

INSERT INTO [SERVICE] (SERVICE_ID, [Date], [Hours], Work_done)
VALUES
(1, '2023-01-01', 4, 'Oil Change'),
(2, '2023-02-20', 3, 'Inspection'),
(3, '2023-03-28', 6, 'Engine Overhaul'),
(4, '2022-04-01', 2, 'Tire Replacement'),
(5, '2021-05-01', 1, 'Avionics Check'),
(6, '2021-06-01', 5, 'Painting'),
(7, '2021-07-01', 2, 'Electrical Wiring'),
(8, '2021-08-01', 3, 'Landing Gear Inspection'),
(9, '2021-09-01', 4, 'Hydraulic System Repair'),
(10, '2021-10-01', 2, 'Windshield Replacement'),
(11, '2021-01-01', 4, 'Oil Change'),
(12, '2021-02-01', 3, 'Inspection'),
(13, '2021-03-01', 6, 'Engine Overhaul'),
(14, '2021-04-01', 2, 'Tire Replacement'),
(15, '2020-05-01', 1, 'Avionics Check'),
(16, '2020-06-01', 5, 'Painting'),
(17, '2020-07-01', 2, 'Electrical Wiring'),
(18, '2020-08-01', 3, 'Landing Gear Inspection'),
(19, '2020-09-01', 4, 'Hydraulic System Repair'),
(20, '2020-10-01', 2, 'Windshield Replacement'),
(21, '2020-10-01', 2, 'Windshield Replacement');

INSERT INTO AIRPLANE (Reg#, OF_TYPE, STORED_IN)
VALUES
('N12345', 'Boeing 747', 1),
('N67890', 'Airbus A350', 2),
('N24680', 'Embraer E175', 3),
('N13579', 'Airbus A380', 4),
('N11223', 'Boeing 777', 5),
('N44556', 'Bombardier Global 7500', 6),
('N77889', 'Cessna 172', 7),
('N22334', 'Gulfstream G650', 8),
('N66778', 'Dassault Falcon 8X', 9),
('N99001', 'Pilatus PC-12', 10),
('N56789', 'Cirrus SR22', 11),
('N23456', 'Diamond DA40', 12),
('N98765', 'Beechcraft Bonanza', 13),
('N43210', 'Cessna Citation CJ4', 14),
('N65432', 'HondaJet HA-420', 15),
('N87654', 'Piper M600', 16),
('N11111', 'Embraer Phenom 300', 17),
('N22222', 'Pilatus PC-24', 18),
('N33333', 'Cessna Citation Longitude', 19),
('N44444', 'Bombardier Challenger 350', 20);

INSERT INTO PLANE_SERVICE (Reg#, SERVICE_ID)
VALUES
('N12345', 1),
('N67890', 2),
('N24680', 3),
('N13579', 4),
('N11223', 5),
('N44556', 6),
('N77889', 7),
('N22334', 8),
('N66778', 9),
('N99001', 10),
('N56789', 11),
('N23456', 12),
('N98765', 13),
('N43210', 14),
('N65432', 15),
('N87654', 16),
('N11111', 17),
('N22222', 18),
('N33333', 19),
('N33333', 20);
--deleted('N44444', 21);

INSERT INTO PERSON (Ssn, [Name], [Address], Phone, Category)
VALUES
(101, 'Elon Musk', 'St 1, USA', '(101) 123-4567', 'Individual'),
(102, 'John Musk', 'St 2, USA', '(102) 123-4568', 'Individual'),
(103, 'James Musk', 'St 3, USA', '(103) 123-4569', 'Individual'),
(104, 'ABC Inc.', 'St 4, USA', '(104) 123-4570', 'Corporation'),
(105, 'BCD Inc.', 'St 5, USA', '(105) 123-4571', 'Corporation'),
(106, 'Joe Musk', 'St 6, USA', '(106) 123-4572', 'Individual'),
(107, 'Jane Doe', 'St 7, USA', '(107) 123-4573', 'Individual'),
(108, 'Bob Smith', 'St 8, USA', '(108) 123-4574', 'Individual'),
(109, 'Sara Wilson', 'St 9, USA', '(109) 123-4575', 'Individual'),
(110, 'XYZ Inc.', 'St 10, USA', '(110) 123-4576', 'Corporation'),
(111, 'PQR Corp.', 'St 11, USA', '(111) 123-4577', 'Corporation'),
(112, 'Tom Brown', 'St 12, USA', '(112) 123-4578', 'Individual'),
(113, 'Jerry Adams', 'St 13, USA', '(113) 123-4579', 'Individual'),
(114, 'Linda James', 'St 14, USA', '(114) 123-4580', 'Individual'),
(115, 'DEF Inc.', 'St 15, USA', '(115) 123-4581', 'Corporation'),
(116, 'GHI Corp.', 'St 16, USA', '(116) 123-4582', 'Corporation'),
(117, 'Peter Lee', 'St 17, USA', '(117) 123-4583', 'Individual'),
(118, 'Sarah Wilson', 'St 18, USA', '(118) 123-4584', 'Individual'),
(119, 'Martin Green', 'St 19, USA', '(119) 123-4585', 'Individual'),
(120, 'EFG Inc.', 'St 20, USA', '(120) 123-4586', 'Corporation'),
(121, 'Alex Brown', 'St 21, USA', '(121) 123-4587', 'Individual'),
(122, 'Emily Davis', 'St 22, USA', '(122) 123-4588', 'Individual'),
(123, 'Grace Lee', 'St 23, USA', '(123) 123-4589', 'Individual'),
(124, 'Frank Johnson', 'St 24, USA', '(124) 123-4590', 'Individual'),
(125, 'Oliver White', 'St 25, USA', '(125) 123-4591', 'Individual'),
(126, 'Emma Clark', 'St 26, USA', '(126) 123-4592', 'Individual'),
(127, 'Michael Lee', 'St 27, USA', '(127) 123-4593', 'Individual');

INSERT INTO EMPLOYEE (Ssn, Salary, [Shift])
VALUES
(101, 100000, 'Day'),
(102, 90000, 'Night'),
(103, 110000, 'Day'),
(106, 85000, 'Night'),
(107, 95000, 'Day'),
(108, 80000, 'Night'),
(109, 105000, 'Day'),
(112, 85000, 'Night'),
(113, 100000, 'Day'),
(114, 90000, 'Night');

INSERT INTO PILOT (Ssn, Lic_num, Restr)
VALUES
(117, 'A123', 'None'),
(118, 'B234', 'Contacts'),
(119, 'C345', 'Glasses'),
(121, 'D456', 'None'),
(122, 'E567', 'Contacts'),
(123, 'F678', 'None'),
(124, 'G789', 'Contacts'),
(125, 'H890', 'Glasses'),
(126, 'I901', 'None'),
(127, 'J012', 'None');

INSERT INTO WORKS_ON (Ssn, Model)
VALUES
(101, 'Boeing 747'),
(101, 'Airbus A380'),
(102, 'Boeing 777'),
(102, 'Airbus A350'),
(103, 'Boeing 747'),
(103, 'Airbus A350'),
(106, 'Embraer E175'),
(107, 'Cessna 172'),
(108, 'Bombardier Global 7500'),
(109, 'Gulfstream G650'),
(112, 'Dassault Falcon 8X'),
(113, 'Pilatus PC-12'),
(114, 'Cirrus SR22'),
(107, 'Cessna Citation Longitude'),
(108, 'Gulfstream G650'),
(109, 'Pilatus PC-24'),
(112, 'Embraer Phenom 300'),
(113, 'Dassault Falcon 8X'),
(114, 'Beechcraft Bonanza'),
(106, 'Diamond DA40');

INSERT INTO MAINTAINS (Ssn, SERVICE_ID)
VALUES
(101, 1),
(102, 2),
(103, 4),
(106, 6),
(107, 7),
(108, 8),
(109, 9),
(112, 12),
(113, 13),
(114, 14);

INSERT INTO FLIES (Ssn, OF_TYPE)
VALUES
(117, 'Boeing 747'),
(118, 'Boeing 777'),
(119, 'Airbus A380'),
(121, 'Airbus A350'),
(122, 'Embraer E175'),
(123, 'Cessna 172'),
(124, 'Bombardier Global 7500'),
(125, 'Gulfstream G650'),
(126, 'Dassault Falcon 8X'),
(127, 'Pilatus PC-12');

INSERT INTO OWNS (Reg#, Ssn, Pdate)
VALUES
('N12345', 101, '2022-01-01'),
('N67890', 102, '2022-01-02'),
('N24680', 103, '2022-01-03'),
('N13579', 104, '2022-01-04'),
('N11223', 105, '2022-01-05'),
('N44556', 106, '2022-01-06'),
('N77889', 107, '2022-01-07'),
('N22334', 108, '2022-01-08'),
('N66778', 109, '2022-01-09'),
('N99001', 110, '2022-01-10'),
('N56789', 111, '2022-01-11'),
('N23456', 112, '2022-01-12'),
('N98765', 113, '2022-01-13'),
('N43210', 114, '2022-01-14'),
('N65432', 115, '2022-01-15'),
('N87654', 116, '2022-01-16'),
('N11111', 117, '2022-01-17'),
('N22222', 118, '2022-01-18'),
('N33333', 119, '2022-01-19'),
('N44444', 120, '2023-03-20'),
('N44444', 104, '2022-03-01'),
('N44444', 114, '2022-03-01');
