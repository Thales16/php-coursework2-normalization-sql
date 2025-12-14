-- Database creation
CREATE DATABASE IF NOT EXISTS coursework2;
USE coursework2;

-- Department Table 
CREATE TABLE Department (
    DeptCode VARCHAR(10) NOT NULL,
    DeptLocation VARCHAR(100) NOT NULL,
    PRIMARY KEY (DeptCode)
);

-- Employee Table
CREATE TABLE Employee (
    EmpNo INT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Job VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10, 2),
    DeptCode VARCHAR(10),
    PRIMARY KEY (EmpNo),
    FOREIGN KEY (DeptCode) REFERENCES Department(DeptCode)
);