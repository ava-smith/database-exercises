USE employees;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT * FROM employees
WHERE last_name LIKE 'E%';

SELECT * FROM employees
WHERE last_name LIKE '%q%';


SELECT * FROM employees
WHERE first_name = 'Irena'
    AND gender = 'M'
   OR first_name = 'Vidya'
    AND gender = 'M'
   OR first_name = 'Maya'
    AND gender = 'M';

SELECT * FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%e'
    ORDER BY emp_no;

SELECT * FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';

SELECT * FROM employees
WHERE last_name NOT LIKE '%qu%'
  AND last_name LIKE '%q%';