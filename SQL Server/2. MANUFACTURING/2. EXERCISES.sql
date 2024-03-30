# 01º EXERCISES:
--DESCRIPTION: Retrieve the names and salaries of all employees in the Sales department.
# QUERY:

SELECT name, salary 
FROM employees 
WHERE department = 'Sales';

---------------------------------------------------------------------------------------------------

# 02º EXERCISES:
--DESCRIPTION: Calculate the total sales amount for each product category.
# QUERY:

SELECT category, SUM(total_amount) AS total_sales_amount 
FROM orders o 
JOIN products p ON o.product_id = p.product_id 
GROUP BY category;

---------------------------------------------------------------------------------------------------

# 03º EXERCISES:
--DESCRIPTION: Find the top 10 best-selling products.
# QUERY:

SELECT product_name, SUM(total_amount) AS total_sales 
FROM orders o 
JOIN products p ON o.product_id = p.product_id 
GROUP BY product_name 
ORDER BY total_sales DESC 
LIMIT 10;

---------------------------------------------------------------------------------------------------

# 04º EXERCISES:
--DESCRIPTION: Get the total revenue generated by each employee.
# QUERY:

SELECT name, SUM(total_amount) AS total_revenue 
FROM employees e 
JOIN orders o ON e.employee_id = o.employee_id 
GROUP BY name;

---------------------------------------------------------------------------------------------------

# 05º EXERCISES:
--DESCRIPTION: Find the average order value.
# QUERY:

SELECT AVG(total_amount) AS average_order_value 
FROM orders;

---------------------------------------------------------------------------------------------------

# 06º EXERCISES:
--DESCRIPTION: List all employees who joined the company after a specific date.
# QUERY:

SELECT * 
FROM employees 
WHERE hire_date > 'specific_date';

---------------------------------------------------------------------------------------------------

# 07º EXERCISES:
--DESCRIPTION: Find the customers who have placed the most orders.
# QUERY:

SELECT customer_id, COUNT(order_id) AS order_count 
FROM orders 
GROUP BY customer_id 
ORDER BY order_count DESC 
LIMIT 1;

---------------------------------------------------------------------------------------------------

# 08º EXERCISES:
--DESCRIPTION: Calculate the total number of products sold.
# QUERY:

SELECT SUM(stock_quantity) AS total_products_sold 
FROM products;

---------------------------------------------------------------------------------------------------

# 09º EXERCISES:
--DESCRIPTION: Find the top 5 suppliers with the highest number of products supplied.
# QUERY:

SELECT supplier_name, COUNT(product_id) AS product_count 
FROM suppliers 
GROUP BY supplier_name 
ORDER BY product_count DESC 
LIMIT 5;

---------------------------------------------------------------------------------------------------

# 10º EXERCISES:
--DESCRIPTION: Identify the customers who have not placed any orders.
# QUERY:

SELECT customer_id 
FROM customers 
WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM orders);

---------------------------------------------------------------------------------------------------

# 11º EXERCISES:
--DESCRIPTION: Calculate the average salary for each department.
# QUERY:

SELECT department, AVG(salary) AS average_salary 
FROM employees 
GROUP BY department;

---------------------------------------------------------------------------------------------------

# 12º EXERCISES:
--DESCRIPTION: List the products that are out of stock.
# QUERY:

SELECT * 
FROM products 
WHERE stock_quantity = 0;

---------------------------------------------------------------------------------------------------

# 13º EXERCISES:
--DESCRIPTION: Find the orders that were shipped late.
# QUERY:

SELECT * 
FROM orders 
WHERE shipping_date > order_date;

---------------------------------------------------------------------------------------------------

# 14º EXERCISES:
--DESCRIPTION: Calculate the total revenue for each month.
# QUERY:

SELECT EXTRACT(MONTH FROM order_date) AS month, 
       EXTRACT(YEAR FROM order_date) AS year, 
       SUM(total_amount) AS total_revenue 
FROM orders 
GROUP BY year, month;

---------------------------------------------------------------------------------------------------

# 15º EXERCISES:
--DESCRIPTION: Identify the products with the highest and lowest prices.
# QUERY:

SELECT MAX(price) AS highest_price, MIN(price) AS lowest_price 
FROM products;

---------------------------------------------------------------------------------------------------

# 16º EXERCISES:
--DESCRIPTION: Get the details of the oldest and newest employees.
# QUERY:

SELECT * FROM employees WHERE hire_date = (SELECT MIN(hire_date) FROM employees);
SELECT * FROM employees WHERE hire_date = (SELECT MAX(hire_date) FROM employees);

---------------------------------------------------------------------------------------------------

# 17º EXERCISES:
--DESCRIPTION: List the customers who have spent the most on orders.
# QUERY:

SELECT customer_id, SUM(total_amount) AS total_spent 
FROM orders 
GROUP BY customer_id 
ORDER BY total_spent DESC 
LIMIT 1;

---------------------------------------------------------------------------------------------------

# 18º EXERCISES:
--DESCRIPTION: Find the suppliers who are located in a specific city.
# QUERY:

SELECT * 
FROM suppliers 
WHERE city = 'specific_city';

---------------------------------------------------------------------------------------------------

# 19º EXERCISES:
--DESCRIPTION: Calculate the total number of orders placed by each customer.
# QUERY:

SELECT customer_id, COUNT(order_id) AS total_orders 
FROM orders 
GROUP BY customer_id;

---------------------------------------------------------------------------------------------------

# 20º EXERCISES:
--DESCRIPTION: Identify the employees with the highest and lowest salaries.
# QUERY:

SELECT * FROM employees WHERE salary = (SELECT MAX(salary) FROM employees);
SELECT * FROM employees WHERE salary = (SELECT MIN(salary) FROM employees);

---------------------------------------------------------------------------------------------------