```sql
-- Create database
CREATE DATABASE IF NOT EXISTS company_db;

USE company_db;

-- Employees table
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    department VARCHAR(50),
    job_title VARCHAR(100),
    salary DECIMAL(10,2),
    joining_date DATE,
    city VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Departments table
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

-- Projects table
CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    technology VARCHAR(100),
    start_date DATE,
    end_date DATE,
    status VARCHAR(30)
);

-- Employee data
INSERT INTO employees
(first_name, last_name, email, department, job_title, salary, joining_date, city)
VALUES
('Ravi', 'Kumar', 'ravi.kumar@example.com', 'DevOps', 'DevOps Engineer', 85000.00, '2021-06-15', 'Hyderabad'),
('Arjun', 'Reddy', 'arjun.reddy@example.com', 'Development', 'Java Developer', 72000.00, '2022-01-10', 'Bangalore'),
('Priya', 'Sharma', 'priya.sharma@example.com', 'Testing', 'QA Engineer', 65000.00, '2022-03-20', 'Pune'),
('Suresh', 'Naidu', 'suresh.naidu@example.com', 'DevOps', 'Cloud Engineer', 95000.00, '2020-11-05', 'Hyderabad'),
('Anjali', 'Verma', 'anjali.verma@example.com', 'HR', 'HR Manager', 78000.00, '2019-08-12', 'Chennai'),
('Kiran', 'Rao', 'kiran.rao@example.com', 'Development', 'Backend Developer', 82000.00, '2021-09-01', 'Hyderabad'),
('Sneha', 'Patel', 'sneha.patel@example.com', 'Finance', 'Financial Analyst', 70000.00, '2020-02-17', 'Mumbai'),
('Vikram', 'Singh', 'vikram.singh@example.com', 'Security', 'Security Engineer', 98000.00, '2021-12-01', 'Delhi'),
('Manoj', 'Reddy', 'manoj.reddy@example.com', 'Development', 'Frontend Developer', 68000.00, '2023-01-15', 'Hyderabad'),
('Divya', 'Krishna', 'divya.krishna@example.com', 'Testing', 'Automation Engineer', 76000.00, '2022-07-25', 'Bangalore');

-- Department data
INSERT INTO departments
(department_name, location)
VALUES
('DevOps', 'Hyderabad'),
('Development', 'Bangalore'),
('Testing', 'Pune'),
('HR', 'Chennai'),
('Finance', 'Mumbai'),
('Security', 'Delhi');

-- Project data
INSERT INTO projects
(project_name, technology, start_date, end_date, status)
VALUES
('Payment Gateway', 'Java/Spring Boot', '2023-01-01', '2023-12-31', 'Completed'),
('Cloud Migration', 'AWS/Terraform', '2024-01-15', '2024-09-30', 'Completed'),
('CI/CD Automation', 'Jenkins/Docker', '2024-03-01', '2024-08-31', 'Completed'),
('Kubernetes Platform', 'Kubernetes/Helm', '2024-06-01', NULL, 'In Progress'),
('Monitoring Platform', 'Prometheus/Grafana', '2024-08-01', NULL, 'In Progress');

-- Verify data
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM projects;
```
