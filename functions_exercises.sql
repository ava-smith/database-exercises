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

SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';

SELECT * FROM employees
WHERE last_name NOT LIKE '%qu%'
  AND last_name LIKE '%q%';

SELECT * FROM employees
WHERE MONTH(birth_date) = 12
    AND DAY(birth_date) = 25;

SELECT * FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
    AND MONTH(birth_date) = 12
    AND DAY(birth_date) = 25
    ORDER BY birth_date, hire_date DESC;

SELECT *, DATEDIFF(curdate(), hire_date) FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = 12
  AND DAY(birth_date) = 25;

