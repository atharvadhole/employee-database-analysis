-- Employees table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender CHAR(1),
    birth_date DATE,
    hire_date DATE
);

-- Departments table
CREATE TABLE departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Employee-Department relationship
CREATE TABLE dept_emp (
    emp_no INT,
    dept_no CHAR(4),
    from_date DATE,
    to_date DATE,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Department Managers
CREATE TABLE dept_manager (
    emp_no INT,
    dept_no CHAR(4),
    from_date DATE,
    to_date DATE,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Salaries table
CREATE TABLE salaries (
    emp_no INT,
    salary INT,
    from_date DATE,
    to_date DATE,
    PRIMARY KEY (emp_no, from_date),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Titles table
CREATE TABLE titles (
    emp_no INT,
    title VARCHAR(50),
    from_date DATE,
    to_date DATE,
    PRIMARY KEY (emp_no, title, from_date),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
Added employee database schema with relationships
