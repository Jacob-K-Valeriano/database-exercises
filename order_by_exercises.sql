USE employees;
SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY first_name ASC;

SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY first_name ASC, last_name ASC;

SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY last_name ASC, first_name ASC;

SELECT *
FROM employees
WHERE last_name LIKE '%E'
ORDER BY emp_no ASC;

SELECT *
FROM employees
WHERE last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT * FROM employees
WHERE hire_date LIKE '199%';

SELECT * FROM employees
WHERE birth_date = '%-12-25';

SELECT * FROM employees
WHERE last_name
LIKE '%q%';

SELECT * FROM employees
WHERE first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name =  'Maya';

SELECT * FROM employees
WHERE first_name
IN ('Irena', 'Vidya', 'Maya')
AND gender = 'm';

SELECT * FROM employees
WHERE last_name
LIKE 'E%'
OR last_name LIKE '%e';

SELECT * FROM employees
WHERE last_name
LIKE 'E%'
AND last_name
LIKE '%e';


SELECT * FROM employees
WHERE hire_date
BETWEEN '1990-01-01' AND '2000-01-01'
AND birth_date LIKE '%12-25%'
ORDER BY  birth_date, hire_date DESC;