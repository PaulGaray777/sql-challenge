CREATE TABLE titles (
    title_id VARCHAR (10) PRIMARY KEY,
    title VARCHAR(30) NOT NULL
);

CREATE TABLE departments (
    dept_no VARCHAR (5) PRIMARY KEY,
    dept_name  VARCHAR (30) NOT NULL
);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY, 
    title_id VARCHAR (10) NOT NULL,
    birth_date VARCHAR (15) NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR (25) NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date VARCHAR(15) NOT NULL,
    FOREIGN KEY (title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(5) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(5) NOT NULL,
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
    emp_no INT NOT NULL, 
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);