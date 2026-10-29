-- ========================================================
-- Seed Data: Sample Employees
-- ========================================================
USE employee_db;

-- Insert initial sample employees (status = 1 for active)
-- Notice overlapping partial names ('John', 'Jonathan', 'Johnson')
-- to test case-insensitive substring search.
INSERT INTO employees (employee_id, name, time_in, time_out, salary, status) VALUES
('EMP101', 'John Doe', '09:00 AM', '05:00 PM', 65000.00, 1),
('EMP102', 'Jonathan Smith', '08:30 AM', '04:30 PM', 72000.00, 1),
('EMP103', 'Alice Johnson', '09:15 AM', '05:15 PM', 58000.00, 1),
('EMP104', 'Robert Johnson', '10:00 AM', '06:00 PM', 80000.00, 1),
('EMP105', 'Sarah Williams', '09:00 AM', '05:00 PM', 67000.00, 1),
('EMP106', 'Michael Brown', '08:00 AM', '04:00 PM', 62000.00, 1),
('EMP107', 'Emily Davis', '09:30 AM', '05:30 PM', 75000.00, 1);
