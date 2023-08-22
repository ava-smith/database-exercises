USE employees;

SHOW TABLES;

SELECT DISTINCT title
FROM titles;

SELECT last_name FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%e'
GROUP BY last_name
ORDER BY last_name;

SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%e'
GROUP BY last_name, first_name
ORDER BY last_name;

SELECT COUNT(*) AS Total, last_name AS "Last Name"
FROM employees
WHERE last_name NOT LIKE '%qu%'
AND last_name LIKE '%q%'
GROUP BY last_name;

SELECT COUNT(*) AS Total, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;