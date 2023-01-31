USE employees;

SELECT title, COUNT(*)
FROM titles
WHERE emp_no IN (SELECT emp_no
                 FROM dept_emp
                 WHERE dept_no IN (
                     SELECT dept_no
                     FROM departments
                     WHERE dept_name = 'Quality Management'
                     ) AND emp_no IN(SELECT emp_no
                                     FROM employees
                                     WHERE first_name = 'Lucien')
                 AND to_date = '9999-01-01')
AND to_date = '9999-01-01'
GROUP BY title;

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date LIKE '9999%'
    );

# Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT *
FROM employees
WHERE hire_date = (SELECT hire_date
                   FROM employees
                   WHERE emp_no = 101010);

# Find all the titles held by all employees with the first name Aamod.
SELECT DISTINCT title
FROM titles
WHERE emp_no IN (SELECT emp_no
                    FROM employees
                    WHERE first_name = 'Aamod')
ORDER BY title;

# Find all the current department managers that are female.
SELECT first_name, last_name
FROM employees
WHERE gender = 'F' AND emp_no IN (SELECT emp_no
                FROM dept_manager
                WHERE to_date LIKE '9999%')