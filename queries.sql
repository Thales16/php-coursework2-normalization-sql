-- 1. Average and Total Salary
SELECT 
    AVG(Salary) AS Average_Salary, 
    SUM(Salary) AS Total_Payroll 
FROM Employee;


-- 2. Count Employees in a Specific Department
SELECT 
    COUNT(*) AS Employee_Count_1C 
FROM Employee 
WHERE DeptCode = '1C';


-- 3. Name Pattern Search
SELECT 
    Name 
FROM Employee 
WHERE Name LIKE 'B___%';

-- 4. Employees by Job Title 
SELECT 
    EmpNo, Name, DeptCode 
FROM Employee 
WHERE Job = 'Programmer IV';


-- 5. Employees Hired Between Two Dates (Ordered by Name)
SELECT 
    * FROM Employee 
WHERE HireDate BETWEEN '2015-01-01' AND '2020-12-31'
ORDER BY Name ASC;


-- 6. Min & Max Salary
SELECT 
    MIN(Salary) AS Minimum_Salary, 
    MAX(Salary) AS Maximum_Salary 
FROM Employee;


-- 7. Earliest & Latest Hire Date
SELECT 
    MIN(HireDate) AS Earliest_HireDate, 
    MAX(HireDate) AS Latest_HireDate 
FROM Employee;


-- 8. Employee Count per Department (Display Location & Count)
SELECT 
    d.DeptLocation, 
    COUNT(e.EmpNo) AS Employee_Count_Per_Location
FROM Department d
JOIN Employee e 
    ON d.DeptCode = e.DeptCode
GROUP BY d.DeptLocation;


-- 9. Average Salary per Department (Using alias "Average Salary")
SELECT 
    DeptCode, 
    AVG(Salary) AS "Average Salary"
FROM Employee
GROUP BY DeptCode;


-- 10. High-Salary Departments 
SELECT 
    DeptCode, 
    SUM(Salary) AS Total_Department_Salary
FROM Employee
GROUP BY DeptCode
HAVING SUM(Salary) > 300000;


-- 11. Employees in a Specific Location 
SELECT 
    e.Name, 
    d.DeptLocation
FROM Employee e
JOIN Department d 
    ON e.DeptCode = d.DeptCode
WHERE d.DeptLocation = 'Pointe-à-Pitre';


-- 12. Total Salary by Department AND Job Title
SELECT 
    DeptCode, 
    Job, 
    SUM(Salary) AS Total_Cost_by_Group
FROM Employee
GROUP BY DeptCode, Job;
