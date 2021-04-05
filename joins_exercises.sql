USE employees;
#1
SELECT departments.dept_name ,
       CONCAT(employees.first_name,'', employees.last_name)
FROM employees
         JOIN dept_manager on employees.emp_no = dept_manager.emp_no
         JOIN departments on dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date < NOW() # or use = 9999-01-01
ORDER BY dept_name;

#REFACTORED

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name,'', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm on e.emp_no = dm.emp_no
         JOIN departments AS d on dm.dept_no = d.dept_no
WHERE dm.to_date < NOW()
ORDER BY dept_name;

#2

SELECT departments.dept_name ,
       CONCAT(employees.first_name,'', employees.last_name)
FROM employees
         JOIN dept_manager on employees.emp_no = dept_manager.emp_no
         JOIN departments on dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date > NOW() # or use = 9999-01-01
AND employees.gender = 'f'
ORDER BY dept_name;

#REFACTORED

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name,'', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm on e.emp_no = dm.emp_no
         JOIN departments AS d on dm.dept_no = d.dept_no
WHERE dm.to_date > NOW()
AND e.gender = 'f'
ORDER BY d.dept_name;

#3

SELECT titles.title, COUNT(titles.emp_no) AS count
FROM titles
    JOIN dept_emp on titles.emp_no = dept_emp.emp_no
    JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Customer Service'
    AND dept_emp.to_date > NOW()
    AND titles.to_date > NOW()
group by title;


#4


SELECT departments.dept_name ,
       CONCAT(employees.first_name,'', employees.last_name), salaries.salary
FROM employees
         JOIN dept_manager on employees.emp_no = dept_manager.emp_no
         JOIN departments on dept_manager.dept_no = departments.dept_no
         JOIN salaries on employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date > NOW() # or use = 9999-01-01
    AND salaries.to_date > NOW()
ORDER BY dept_name;







