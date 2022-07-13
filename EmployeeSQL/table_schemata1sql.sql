--CREATE departments table 

CREATE TABLE departments(
  dept_no VARCHAR PRIMARY KEY,
  dept_name VARCHAR 
);


--CREATE employees table 

CREATE TABLE employees(
  emp_no INT PRIMARY KEY,
  emp_title_id VARCHAR,
  birth_date date,
  first_name varchar,
  last_name varchar,
  sex varchar,
  hire_date date
);


--CREATE titles table 

CREATE TABLE titles(
  title_id  VARCHAR PRIMARY KEY,
  title VARCHAR 
);


CREATE TABLE dept_emp(
  emp_no int,
  dept_no VARCHAR, 
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);


CREATE TABLE dept_manager(
  dept_no VARCHAR, 
  emp_no INT,
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);



CREATE TABLE salaries(
  emp_no INT,
  salary float,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

