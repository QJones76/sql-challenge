-- List each employee in the Sales department, including their employee number, last name, and first name
SELECT 
	de.emp_no,
	e.last_name,
	e.first_name
FROM dept_emp AS de
JOIN employees AS e ON de.emp_no = e.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';