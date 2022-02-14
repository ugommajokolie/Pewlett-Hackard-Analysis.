SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;
SELECT * FROM titles;

DROP TABLE IF EXISTS test;

--Retirement eligibility
SELECT first_name, last_name
From employees
Where (birth_date between '1952-01-01' and '1955-12-31')
And (hire_date Between '1985-01-01' and '1988-12-31');

--Employees born in 1952
SELECT first_name, last_name
From employees
Where birth_date between '1952-01-01' and '1952-12-31';

--Employees born in 1953
SELECT first_name, last_name
From employees
Where birth_date between '1953-01-01' and '1953-12-31';

--Employees born in 1954
SELECT first_name, last_name
From employees
Where birth_date between '1954-01-01' and '1954-12-31';

--Employees born in 1955
SELECT first_name, last_name
From employees
Where birth_date between '1955-01-01' and '1955-12-31';


--Number of employees retiring
SELECT Count (first_name)
From employees
Where (birth_date between '1952-01-01' and '1955-12-31')
And (hire_date Between '1985-01-01' and '1988-12-31');

--Retirement eligibility
SELECT first_name, last_name
Into retirement_info
From employees
Where (birth_date between '1952-01-01' and '1955-12-31')
And (hire_date Between '1985-01-01' and '1988-12-31');

SELECT * FROM retirement_info