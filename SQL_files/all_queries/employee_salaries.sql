-- List the employee number, last name, first name, sex, and salary of each employee
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no
-- Shows salaries in descending order to see who the big earners are
ORDER BY s.salary DESC; 