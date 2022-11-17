--Creating a SQL file 
--Preview the employees table
SELECT * FROM employees;

--Preview the titles table;
SELECT * FROM titles; 

--Code to drop table "emp_titles" as needed
DROP TABLE emp_titles;

--Join both tables on the primary key. Filter by birth date. Order by employee number.
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date 
INTO emp_titles
FROM employees AS e
INNER JOIN titles AS t  
ON e.emp_no=t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

--View the emp_titles table
SELECT * FROM emp_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_titles.emp_no) emp_titles.emp_no,
emp_titles.first_name,
emp_titles.last_name,
emp_titles.title

INTO unique_titles
FROM emp_titles
WHERE (emp_titles.to_date = '9999-01-01')
ORDER BY emp_no ASC, to_date DESC;

--View unique titles table
SELECT * FROM unique_titles;


--Query to retrieve the number of employees by their most recent 
--job title who are about to retire
SELECT COUNT(unique_titles.emp_no), unique_titles.title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

--View retiring titles column
SELECT * FROM retiring_titles;