USE employees;

SELECT d.dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Manager`
FROM employees e
    JOIN dept_manager dm
        ON e.emp_no = dm.emp_no
    JOIN departments d
        ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' ORDER BY dept_name;