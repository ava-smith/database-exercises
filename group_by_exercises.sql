USE employees;

SHOW TABLES;

SELECT DISTINCT title
FROM titles;

SELECT last_name FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%e'
GROUP BY last_name;

SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%e'
GROUP BY last_name, first_name;

SELECT last_name, COUNT(last_name) FROM employees
WHERE last_name NOT LIKE '%qu%'
AND last_name LIKE '%q%'
GROUP BY last_name;

SELECT gender, COUNT(gender) FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;