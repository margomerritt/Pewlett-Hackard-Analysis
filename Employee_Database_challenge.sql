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

--Query to create a mentorship eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_elgibility
FROM employees AS e
INNER JOIN dept_emp as de
ON e.emp_no=de.emp_no
INNER JOIN titles as t
ON e.emp_no=t.emp_no
WHERE (de.to_date = '9999-01-01') 
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no ASC;

--View mentorship eligibility table
SELECT * FROM mentorship_elgibility;

--Query to find employees born in or after 1980. 
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date 
INTO mid_level
FROM employees AS e
INNER JOIN titles AS t  
ON e.emp_no=t.emp_no
WHERE (e.birth_date BETWEEN '1980-01-01' AND '2004-12-31')
ORDER BY emp_no ASC;

--View mid_level table 
SELECT * FROM mid_level;

--Query to find current count of early to mid-level employees by job title. 
SELECT COUNT(mid_level.emp_no), mid_level.title
INTO mid_level_titles
FROM mid_level
GROUP BY title
ORDER BY COUNT(title) DESC;