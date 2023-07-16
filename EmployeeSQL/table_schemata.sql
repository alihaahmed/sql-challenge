-- -- Create departments table
CREATE TABLE departments (
	dept_no CHAR(4) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(50)
	);

-- -- Create titles table
CREATE TABLE titles (
	title_id CHAR(5) PRIMARY KEY NOT NULL,
	title VARCHAR(50)
	);

-- -- Create employees table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id CHAR(5),
	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex CHAR(1),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
	);

-- -- Create dept_manager table
CREATE TABLE dept_manager (
	dept_no CHAR(4),
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);

-- -- Create dept_emp table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no CHAR(4),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);

-- -- Create salaries table
CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);