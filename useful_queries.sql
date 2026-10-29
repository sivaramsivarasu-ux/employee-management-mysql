-- ========================================================
-- Useful Operations & Verification Queries
-- ========================================================
USE employee_db;

-- 1. SHOW: Display active employees only (status = 1)
SELECT id, employee_id, name, time_in, time_out, salary, status 
FROM employees 
WHERE status = 1;

-- 2. SEARCH: Partial / full name and ID search
-- E.g. searching 'john' matches John Doe, Jonathan Smith, Alice Johnson, Robert Johnson
SELECT * FROM employees 
WHERE status = 1 
  AND (LOWER(name) LIKE '%john%' OR LOWER(employee_id) LIKE '%john%');

-- 3. SOFT DELETE: Mark employee as 0 instead of deleting row
UPDATE employees 
SET status = 0 
WHERE employee_id = 'EMP101';

-- 4. VIEW SOFT-DELETED (Recycle Bin / Inactive)
SELECT * FROM employees 
WHERE status = 0;

-- 5. RESTORE SOFT-DELETED EMPLOYEE (Back to 1)
UPDATE employees 
SET status = 1 
WHERE employee_id = 'EMP101';

-- 6. EDIT: Update name, shift times, or salary
UPDATE employees 
SET name = 'Jonathan Edward Smith',
    salary = 76000.00
WHERE employee_id = 'EMP102';

-- 7. HARD DELETE: Permanently delete row
DELETE FROM employees 
WHERE employee_id = 'EMP107';

-- 8. ANALYTICS: Salary aggregate summary
SELECT 
    COUNT(*) AS total_active_employees,
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary,
    ROUND(AVG(salary), 2) AS avg_salary,
    SUM(salary) AS total_payroll
FROM employees 
WHERE status = 1;
