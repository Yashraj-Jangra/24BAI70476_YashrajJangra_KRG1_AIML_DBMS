# Experiment 2: GROUP BY and HAVING Clause

## Overview
This experiment demonstrates the use of `GROUP BY` and `HAVING` clauses for aggregating and filtering grouped data in SQL.

## Concepts Covered

### 1. **GROUP BY Clause**
- Organizes rows into groups based on column values
- Used with aggregate functions to perform calculations on each group
- `COUNT()`, `SUM()`, `AVG()`, `MAX()`, `MIN()`

### 2. **HAVING Clause**
- Filters groups based on aggregate function conditions
- Works like `WHERE` but operates on grouped/aggregated data
- Used with `GROUP BY` to filter results

### 3. **Aggregate Functions**
- `COUNT(*)`: Number of rows in each group
- `SUM()`: Total sum of numeric values
- `AVG()`: Average value in each group

## Table: Users

Contains employee information:
- `user_id`: Unique identifier
- `user_name`: Employee name
- `department`: Department (Sales, IT, HR)
- `salary`: Annual salary
- `hire_date`: Employment start date

## Examples

### Example 1: Basic GROUP BY
Counts employees in each department
```sql
SELECT department, COUNT(*) AS employee_count
FROM users
GROUP BY department
ORDER BY employee_count DESC;
```

### Example 2: GROUP BY with HAVING
Shows departments with more than 2 employees and their average salary
```sql
SELECT department, COUNT(*) AS employee_count, AVG(salary) AS average_salary
FROM users
GROUP BY department
HAVING COUNT(*) > 2
ORDER BY average_salary DESC;
```

### Example 3: GROUP BY with HAVING and SUM
Identifies departments with total salary expense exceeding 150,000
```sql
SELECT department, COUNT(*) AS employee_count, SUM(salary) AS total_salary, AVG(salary)
FROM users
GROUP BY department
HAVING SUM(salary) > 150000
ORDER BY total_salary DESC;
```

## Key Takeaways
- `GROUP BY` organizes data; `HAVING` filters groups
- Aggregate functions compute values across groups
- Multiple conditions can be applied using HAVING
- Results can be sorted using ORDER BY
