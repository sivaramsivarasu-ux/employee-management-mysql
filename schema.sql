-- ========================================================
-- Schema Definition: Employee Management Database
-- ========================================================

-- 1. Create database if it does not exist
CREATE DATABASE IF NOT EXISTS employee_db
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE employee_db;

-- 2. Drop existing table if recreating
DROP TABLE IF EXISTS employees;

-- 3. Create employees table
-- Contains: employee_id, name, time_in, time_out, salary, status
-- status = 1 (Active), status = 0 (Soft Deleted)
CREATE TABLE employees (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    employee_id VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    time_in VARCHAR(20) NOT NULL,
    time_out VARCHAR(20) NOT NULL,
    salary DOUBLE NOT NULL,
    status INT NOT NULL DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_emp_id (employee_id),
    INDEX idx_emp_name (name),
    INDEX idx_emp_status (status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
