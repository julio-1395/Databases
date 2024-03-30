CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_title VARCHAR(50),
    department VARCHAR(50),
    manager_id INT,
    salary DECIMAL(10, 2),
    commission_pct DECIMAL(5, 2),
    department_id INT,
    address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(20),
    country VARCHAR(50),
    marital_status VARCHAR(20),
    date_of_birth DATE,
    gender VARCHAR(1)
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    manager_id INT,
    location_id INT
);

CREATE TABLE job_history (
    employee_id INT,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR(50),
    department_id INT
);

CREATE TABLE salaries (
    employee_id INT,
    salary DECIMAL(10, 2),
    start_date DATE,
    end_date DATE
);

