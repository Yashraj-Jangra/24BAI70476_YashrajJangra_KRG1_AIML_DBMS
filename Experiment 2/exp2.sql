-- Use This Command to Drop the Table if it Already Exists
-- DROP TABLE USERS CASCADE CONSTRAINTS;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

-- Insert Sample Employee Data
INSERT INTO users (user_id, user_name, department, salary, hire_date) 
VALUES 
    (1, 'Alice Johnson', 'Sales', 50000, TO_DATE('2022-01-15', 'YYYY-MM-DD')),
    (2, 'Bob Smith', 'IT', 65000, TO_DATE('2021-03-20', 'YYYY-MM-DD')),
    (3, 'Carol White', 'Sales', 52000, TO_DATE('2022-06-10', 'YYYY-MM-DD')),
    (4, 'David Brown', 'IT', 70000, TO_DATE('2020-11-05', 'YYYY-MM-DD')),
    (5, 'Eve Davis', 'HR', 48000, TO_DATE('2023-02-14', 'YYYY-MM-DD')),
    (6, 'Frank Miller', 'Sales', 55000, TO_DATE('2021-09-22', 'YYYY-MM-DD')),
    (7, 'Grace Lee', 'IT', 68000, TO_DATE('2022-04-11', 'YYYY-MM-DD')),
    (8, 'Henry Wilson', 'HR', 47000, TO_DATE('2023-05-30', 'YYYY-MM-DD')),
    (9, 'Iris Chen', 'Sales', 51000, TO_DATE('2022-12-01', 'YYYY-MM-DD')),
    (10, 'Jack Taylor', 'IT', 72000, TO_DATE('2020-07-18', 'YYYY-MM-DD'));

-- Query 1: Basic GROUP BY - Count Employees by Department
SELECT 
    department,
    COUNT(*) AS employee_count
FROM users
GROUP BY department
ORDER BY employee_count DESC;

-- Query 2: GROUP BY with HAVING - Departments with > 2 Employees
SELECT 
    department,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary
FROM users
GROUP BY department
HAVING COUNT(*) > 2
ORDER BY average_salary DESC;

-- Query 3: GROUP BY with Multiple Aggregates - Departments with Total Salary > 150,000
SELECT 
    department,
    COUNT(*) AS employee_count,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary
FROM users
GROUP BY department
HAVING SUM(salary) > 150000
ORDER BY total_salary DESC;
