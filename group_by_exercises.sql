USE employees;

SELECT DISTINCT title
FROM titles;

SELECT first_name, COUNT(*)
FROM employees
GROUP BY first_name
ORDER BY COUNT(*) DESC;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE CONCAT('E%', '%E')
GROUP BY last_name, first_name;

SELECT DISTINCT last_name, first_name
FROM employees
WHERE last_name LIKE CONCAT('E%', '%E')
GROUP BY last_name, first_name;

SELECT DISTINCT COUNT(last_name) AS '# of employees with last name', last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT COUNT(*) AS '# of people', gender
FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya') GROUP BY gender;