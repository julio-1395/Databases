# 01º EXERCISES:
--DESCRIPTION: Retrieve all employees who are managers.
# QUERY:

SELECT * FROM employees 
WHERE employee_id IN (SELECT DISTINCT manager_id FROM employees);

---------------------------------------------------------------------------------------------------

# 02º EXERCISES:
--DESCRIPTION: Get the total number of employees in each department.
# QUERY:

SELECT department, COUNT(employee_id) AS total_employees 
FROM employees 
GROUP BY department;

---------------------------------------------------------------------------------------------------

# 03º EXERCISES:
--DESCRIPTION: Find the highest-paid employee in each department.
# QUERY:

SELECT department, MAX(salary) AS highest_salary 
FROM employees 
GROUP BY department;

---------------------------------------------------------------------------------------------------

# 04º EXERCISES:
--DESCRIPTION: Retrieve the names and salaries of employees who joined the company after a specific date.
# QUERY:

SELECT first_name, last_name, salary 
FROM employees 
WHERE hire_date > 'specific_date';

---------------------------------------------------------------------------------------------------

# 05º EXERCISES:
--DESCRIPTION: Find the department with the most employees.
# QUERY:

SELECT department 
FROM employees 
GROUP BY department 
ORDER BY COUNT(employee_id) DESC 
LIMIT 1;

---------------------------------------------------------------------------------------------------

# 06º EXERCISES:
--DESCRIPTION: Calculate the average salary for each job title.
# QUERY:

SELECT job_title, AVG(salary) AS average_salary 
FROM employees 
GROUP BY job_title;

---------------------------------------------------------------------------------------------------

# 07º EXERCISES:
--DESCRIPTION: Retrieve the names and salaries of employees whose salaries are above the average salary in their department.

SELECT first_name, last_name, salary 
FROM employees 
WHERE (department, salary) IN (
    SELECT department, AVG(salary) 
    FROM employees 
    GROUP BY department
);

---------------------------------------------------------------------------------------------------

# 08º EXERCISES:
--DESCRIPTION: Find the employees who have changed jobs within the company.
# QUERY:

SELECT DISTINCT employee_id 
FROM job_history;

---------------------------------------------------------------------------------------------------

# 09º EXERCISES:
--DESCRIPTION: Get the total number of employees hired each year.
# QUERY:

SELECT EXTRACT(YEAR FROM hire_date) AS year, COUNT(employee_id) AS total_hired 
FROM employees 
GROUP BY year;

---------------------------------------------------------------------------------------------------

# 10º EXERCISES:
--DESCRIPTION: Retrieve the names and job titles of employees who have been promoted.
# QUERY:

SELECT e.first_name, e.last_name, jh.job_id 
FROM employees e 
JOIN job_history jh ON e.employee_id = jh.employee_id 
WHERE e.job_title != jh.job_id;

---------------------------------------------------------------------------------------------------

# 11º EXERCISES:
--DESCRIPTION: Find the departments where no employees work.
# QUERY:

SELECT department_name 
FROM departments 
WHERE department_id NOT IN (SELECT DISTINCT department_id FROM employees);

---------------------------------------------------------------------------------------------------

# 12º EXERCISES:
--DESCRIPTION: Calculate the total salary expense for each department.
# QUERY:

SELECT department, SUM(salary) AS total_salary_expense 
FROM employees 
GROUP BY department;

---------------------------------------------------------------------------------------------------

# 13º EXERCISES:
--DESCRIPTION: Retrieve the names and salaries of employees who have been with the company for more than 5 years.
# QUERY:

SELECT first_name, last_name, salary 
FROM employees 
WHERE hire_date < DATE_SUB(NOW(), INTERVAL 5 YEAR);

---------------------------------------------------------------------------------------------------

# 14º EXERCISES:
--DESCRIPTION: Find the average salary increase for each employee.
# QUERY:

SELECT employee_id, AVG(salary) - (SELECT salary FROM salaries WHERE employee_id = s.employee_id AND start_date = s.start_date) AS salary_increase 
FROM salaries s 
GROUP BY employee_id;

---------------------------------------------------------------------------------------------------

# 15º EXERCISES:
--DESCRIPTION: Identify the employees who have received a salary decrease.
# QUERY:

SELECT employee_id 
FROM salaries 
GROUP BY employee_id 
HAVING MIN(salary) < MAX(salary);

---------------------------------------------------------------------------------------------------

# 16º EXERCISES:
--DESCRIPTION: Calculate the total salary expense for each year.
# QUERY:

SELECT EXTRACT(YEAR FROM start_date) AS year, SUM(salary) AS total_salary_expense 
FROM salaries 
GROUP BY year;

---------------------------------------------------------------------------------------------------

# 17º EXERCISES:
--DESCRIPTION: Retrieve the names and salaries of employees who have not received any salary increase.
# QUERY:

SELECT e.first_name, e.last_name, s.salary 
FROM employees e 
JOIN salaries s ON e.employee_id = s.employee_id 
GROUP BY e.employee_id 
HAVING MIN(s.salary) = MAX(s.salary);

---------------------------------------------------------------------------------------------------

# 18º EXERCISES:
--DESCRIPTION: Find the departments where the average salary is higher than the company-wide average salary.
# QUERY:

SELECT department, AVG(salary) AS department_avg_salary 
FROM employees 
GROUP BY department 
HAVING AVG(salary) > (SELECT AVG(salary) FROM employees);

---------------------------------------------------------------------------------------------------

# 19º EXERCISES:
--DESCRIPTION: Get the total salary expense for each manager's team.
# QUERY:

SELECT manager_id, SUM(salary) AS total_team_salary 
FROM employees 
GROUP BY manager_id;

---------------------------------------------------------------------------------------------------

# 20º EXERCISES:
--DESCRIPTION: Retrieve the names and salaries of employees who have worked in multiple departments.
# QUERY:

SELECT e.first_name, e.last_name, e.salary 
FROM employees e 
JOIN job_history jh ON e.employee_id = jh.employee_id 
GROUP BY e.employee_id 
HAVING COUNT(DISTINCT department_id) > 1;

---------------------------------------------------------------------------------------------------