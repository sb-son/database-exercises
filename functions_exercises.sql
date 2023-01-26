USE employees;

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no ASC;
SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E' ORDER BY emp_no DESC;
SELECT CONCAT(first_name, ' ', last_name) AS 'Name' FROM employees WHERE last_name LIKE CONCAT('E%', '%E') ORDER BY hire_date ASC;
SELECT * FROM employees WHERE  MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25;
SELECT * FROM employees WHERE birth_date LIKE '____-12-25' AND hire_date LIKE '199%' ORDER BY hire_date DESC, birth_date ASC;
SELECT last_name, first_name, DATEDIFF(NOW(), hire_date) FROM employees WHERE birth_date LIKE '____-12-25' AND hire_date LIKE '199%' ORDER BY hire_date DESC, birth_date;

