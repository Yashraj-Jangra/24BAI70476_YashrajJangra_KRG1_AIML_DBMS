
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

-- sample data AI jindabad
INSERT INTO users VALUES 
(1, 'Alice Johnson', 'Sales', 50000, '2022-01-15'),
(2, 'Bob Smith', 'IT', 65000, '2021-03-20'),
(3, 'Carol White', 'Sales', 52000, '2022-06-10'),
(4, 'David Brown', 'IT', 70000, '2020-11-05'),
(5, 'Eve Davis', 'HR', 48000, '2023-02-14'),
(6, 'Frank Miller', 'Sales', 55000, '2021-09-22'),
(7, 'Grace Lee', 'IT', 68000, '2022-04-11'),
(8, 'Henry Wilson', 'HR', 47000, '2023-05-30'),
(9, 'Iris Chen', 'Sales', 51000, '2022-12-01'),
(10, 'Jack Taylor', 'IT', 72000, '2020-07-18');

SELECT 
    department,
    COUNT(*) AS employee_count
FROM users
GROUP BY department
ORDER BY employee_count DESC;


SELECT 
    department,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary
FROM users
GROUP BY department
HAVING COUNT(*) > 2
ORDER BY average_salary DESC;


SELECT 
    department,
    COUNT(*) AS employee_count,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary
FROM users
GROUP BY department
HAVING SUM(salary) > 150000
ORDER BY total_salary DESC;
