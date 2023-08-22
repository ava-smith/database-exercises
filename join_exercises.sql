USE employees;

SHOW TABLES;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name AS department
FROM employees e
JOIN dept_manager dm
ON dm.emp_no = e.emp_no
JOIN departments d
ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name AS department
FROM employees e
JOIN dept_manager dm
ON dm.emp_no = e.emp_no
JOIN departments d
ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

SELECT t.title AS title, COUNT(de.emp_no) AS TOTAL
FROM titles t
JOIN dept_emp de
ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009'
AND de.to_date = '9999-01-01'
AND t.to_date = '9999-01-01'
GROUP BY t.title;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, s.salary
FROM employees e
JOIN dept_manager dm
ON dm.emp_no = e.emp_no
JOIN departments d
ON d.dept_no = dm.dept_no
JOIN salaries s
ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
AND s.to_date = '9999-01-01'
ORDER BY dept_name;

