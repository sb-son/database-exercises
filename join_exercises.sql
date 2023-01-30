USE employees;

# Department managers and their department
SELECT d.dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Manager`
FROM employees e
    JOIN dept_manager dm
        ON e.emp_no = dm.emp_no
    JOIN departments d
        ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY dept_name;

# Departments currently managed by women.
SELECT d.dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Manager`
FROM employees e
    JOIN dept_manager dm
        ON e.emp_no = dm.emp_no
    JOIN departments d
        ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'F'
ORDER BY dept_name;

# Titles of employees currently working in the Customer Service department
SELECT t.title, COUNT(t.emp_no) as Total
FROM employees e
         JOIN titles t
              ON e.emp_no = t.emp_no
         JOIN dept_emp de
              ON e.emp_no = de.emp_no
         JOIN departments d
             ON de.dept_no = d.dept_no
WHERE d.dept_no = 'd009'
    AND t.to_date = '9999-01-01'
    AND de.to_date = '9999-01-01'
GROUP BY t.title
ORDER BY Total DESC;

# Find the current salary of all current managers
SELECT d.dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Manager`,
s.salary
FROM employees e
         JOIN dept_manager dm
              ON e.emp_no = dm.emp_no
         JOIN departments d
              ON dm.dept_no = d.dept_no
         JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
AND s.to_date = '9999-01-01'
ORDER BY dept_name;

# Find the names of all current employees, their department name, and their current manager's name
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS `Department Name`, CONCAT(m.first_name, ' ', m.last_name) AS `Department Manager`
FROM employees e
         JOIN dept_emp de
             ON e.emp_no = de.emp_no
         JOIN departments d
            ON de.dept_no = d.dept_no
         JOIN dept_manager dm
             ON d.dept_no = dm.dept_no
         JOIN employees m
            ON dm.emp_no = m.emp_no
WHERE de.to_date = '9999-01-01'
AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name;