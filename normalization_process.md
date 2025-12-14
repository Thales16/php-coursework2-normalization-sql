# Coursework 2 - Normalization Process (3NF)

## Original Denormalized Table
The initial table (flat file) contained redundant data and anomalies:
- Empno (Employee ID)
- Deptcode (Department Code)
- Deptlocation (Department Location)
- Name (Employee Name)
- Job (Job Title)
- hiredate (Hire Date)
- salary (Salary)

## Functional Dependencies (FDs)
1.  **Full Dependency:** $Empno \rightarrow \{Name, Job, hiredate, salary, Deptcode, Deptlocation\}$ (Empno determines all other attributes)
2.  **Transitive Dependency:** $Deptcode \rightarrow Deptlocation$ (Deptlocation depends only on Deptcode, not directly on the primary key Empno)

## Step-by-Step Normalization

### 1NF (First Normal Form)
- **Action:** Ensure all values are atomic and a Primary Key is defined.
- **Outcome:** The initial table structure satisfies 1NF, with `Empno` serving as the Primary Key.

### 2NF (Second Normal Form)
- **Action:** Eliminate Partial Dependencies.
- **Outcome:** Since the Primary Key (`Empno`) is not composite, the table is already in 2NF.

### 3NF (Third Normal Form)
- **Problem:** Transitive dependency: $Deptcode \rightarrow Deptlocation$. The location is redundant across multiple employee records.
- **Solution:** Decompose the table to separate department information from employee information.

## Final Relational Schema (3NF)

We establish two separate relations:

### Relation 1: Department
| Attribute | Key Type | Notes |
| :--- | :--- | :--- |
| **DeptCode** | Primary Key (PK) | |
| DeptLocation | | |

### Relation 2: Employee
| Attribute | Key Type | Notes |
| :--- | :--- | :--- |
| **EmpNo** | Primary Key (PK) | |
| Name | | NOT NULL |
| Job | | |
| HireDate | | |
| Salary | | |
| **DeptCode** | Foreign Key (FK) | References Department(DeptCode) |