-- Inserting Data into the Department Table
INSERT INTO Department (DeptCode, DeptLocation) VALUES 
('1A', 'Lemery'),
('1C', 'Pointe-à-Pitre'),
('2Z', 'New York'),
('3D', 'Sidokumpul'),
('4B', 'Lilla Edet'),
('5X', 'London');

-- Inserting 30 Employee Records
INSERT INTO Employee (EmpNo, Name, Job, HireDate, Salary, DeptCode) VALUES
(1001, 'Benjamin Miguet', 'Programmer IV', '2019-10-25', 133608.91, '3D'),
(1002, 'Biddy Coppock', 'Health Coach II', '2016-12-09', 135302.24, '1C'),
(1003, 'Desmond Ogbourne', 'Senior Cost Accountant', '2020-03-24', 55991.73, '4B'),
(1004, 'Marita Dubery', 'Executive Secretary', '2019-03-13', 53720.04, '1A'),
(1005, 'Meg Holleran', 'Executive Secretary', '2014-10-20', 73794.50, '1C'),
(1006, 'John Smith', 'Analyst', '2018-01-15', 60000.00, '2Z'),
(1007, 'Alice Brown', 'Programmer IV', '2021-05-10', 120000.00, '3D'),
(1008, 'Carlos Ruiz', 'Manager', '2015-06-20', 95000.00, '5X'),
(1009, 'Diana Prince', 'Engineer', '2017-08-30', 88000.00, '5X'),
(1010, 'Evan Wright', 'Health Coach II', '2019-11-01', 130000.00, '1C'),
(1011, 'Fiona Green', 'Analyst', '2020-02-14', 62000.00, '2Z'),
(1012, 'George Hall', 'Senior Cost Accountant', '2019-09-09', 58000.00, '4B'),
(1013, 'Hannah Lee', 'Executive Secretary', '2016-04-22', 54000.00, '1A'),
(1014, 'Ian Scott', 'Programmer IV', '2022-01-10', 125000.00, '3D'),
(1015, 'Julia Roberts', 'Manager', '2013-12-05', 98000.00, '5X'),
(1016, 'Kevin Hart', 'Engineer', '2018-07-19', 85000.00, '5X'),
(1017, 'Laura Croft', 'Health Coach II', '2017-03-15', 132000.00, '1C'),
(1018, 'Mike Ross', 'Legal Advisor', '2015-11-30', 110000.00, '2Z'),
(1019, 'Nina Simone', 'Executive Secretary', '2021-06-18', 52000.00, '1A'),
(1020, 'Oscar Wilde', 'Writer', '2014-02-28', 45000.00, '4B'),
(1021, 'Paul Rudd', 'Programmer IV', '2020-10-10', 128000.00, '3D'),
(1022, 'Quincy Jones', 'Musician', '2012-05-12', 70000.00, '2Z'),
(1023, 'Rachel Zane', 'Paralegal', '2019-08-05', 55000.00, '2Z'),
(1024, 'Steve Rogers', 'Security', '2016-01-01', 40000.00, '1A'),
(1025, 'Tony Stark', 'Consultant', '2011-09-25', 200000.00, '2Z'),
(1026, 'Ursula K', 'Writer', '2018-04-14', 48000.00, '4B'),
(1027, 'Victor Stone', 'Engineer', '2022-02-20', 90000.00, '5X'),
(1028, 'Wanda M', 'Analyst', '2021-12-12', 65000.00, '2Z'),
(1029, 'Xavier P', 'Professor', '2010-03-10', 105000.00, '5X'),
(1030, 'Yara S', 'Designer', '2019-05-05', 72000.00, '1A');

SELECT * FROM Department WHERE DeptLocation = 'New York';
SELECT Name, Salary, HireDate FROM Employee WHERE Salary > 100000;