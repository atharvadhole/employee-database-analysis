-- 1. List employees with their department names
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no;

-- 2. Average salary by department
SELECT 
    d.dept_name,
    AVG(s.salary) AS avg_salary
FROM departments d
JOIN dept_emp de ON d.dept_no = de.dept_no
JOIN salaries s ON de.emp_no = s.emp_no
GROUP BY d.dept_name;

-- 3. Employees who worked in more than one department
SELECT 
    emp_no,
    COUNT(DISTINCT dept_no) AS dept_count
FROM dept_emp
GROUP BY emp_no
HAVING dept_count > 1;

-- 4. Departments with average salary greater than 70000
SELECT 
    d.dept_name,
    AVG(s.salary) AS avg_salary
FROM departments d
JOIN dept_emp de ON d.dept_no = de.dept_no
JOIN salaries s ON de.emp_no = s.emp_no
GROUP BY d.dept_name
HAVING avg_salary > 70000;

-- 5. Employees with multiple salary changes
SELECT 
    emp_no,
    COUNT(*) AS salary_changes
FROM salaries
GROUP BY emp_no
HAVING salary_changes > 1;
Added employee database analysis queries
