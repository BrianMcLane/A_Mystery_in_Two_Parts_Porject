
--Queries 
-- #1 
SELECT 
	e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM 
	employees e
JOIN 
	salaries s
ON 
	e.emp_no = s.emp_no

-- #2 
SELECT 
	first_name, last_name, hire_date
FROM
	employees 
WHERE 
	 hire_date >= '1986-01-01' AND hire_date < '1987-01-01' 
	
-- #3
SELECT 
	d.dept_no, d.dept_name, dm.emp_no, 
	e.last_name, e.first_name
FROM 
	departments d 
JOIN
	dept_manager dm
ON
	d.dept_no = dm.dept_no
JOIN 
	employees e 
ON 
	dm.emp_no = e.emp_no
	
-- #4 
SELECT 
	e.emp_no, e.last_name, e.first_name, d.dept_name
FROM 
	employees e 
JOIN
	dept_emp de 
ON 
	e.emp_no = de.emp_no
JOIN 
	departments d 
ON 
	d.dept_no = de.dept_no

-- #5 
SELECT
	first_name, last_name, sex
FROM 
	employees 
WHERE 
	first_name = 'Hercules' AND last_name LIKE 'B%'
	
-- #6 
SELECT 
	e.emp_no, e.last_name, e.first_name, d.dept_name
FROM
	departments d
JOIN
	dept_emp de 
ON 
	d.dept_no = de.dept_no
JOIN 
	employees e 
ON 
	de.emp_no = e.emp_no
WHERE 
	d.dept_name = 'Sales'
	
-- #7 
SELECT 
	e.emp_no, e.last_name, e.first_name, d.dept_name
FROM
	departments d
JOIN
	dept_emp de 
ON 
	d.dept_no = de.dept_no
JOIN 
	employees e 
ON 
	de.emp_no = e.emp_no
WHERE 
	d.dept_name = 'Sales' OR d.dept_name = 'Development'
	
-- #8 
SELECT 
	COUNT(last_name), last_name
FROM	
	employees
GROUP BY 
	last_name
ORDER BY
	COUNT(last_name) DESC
	


	
