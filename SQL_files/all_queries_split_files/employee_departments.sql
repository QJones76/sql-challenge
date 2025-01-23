-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT
	de.dept_no,
	de.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM dept_emp AS de
JOIN employees AS e ON de.emp_no = e.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no;