# Pewlett Hackard Analysis
## Overview of Project

### Purpose
The purpose of this project is to perform employee research for the company Pewlett Hackard. This analysis revolves around the companies retirement package. This project needs to answer the following two questions: Who will be retiring in the next few years? And how many positions will Pewlett Hackard need to fill? The goal of this analysis is to generate a list of all employees eligible for the retirement package.

### Resources

* Data Source: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
* Software: PostgreSQL 12, pgaAdmin 4

## Results
This project produced four tables in pgAdmin 4 that were then exported to csv files for further analysis. The four csv files that were produced are: retirement_titles.csv, unique_titles.csv, retiring_titles.csv, and mentorship_eligibilty.csv.
* In retirement_title.csv we pulled data from the Employees table and the Titles table to form a new table with six columns of data. The columns are employee number, first name, last name, job title, from date, and to date. The data was then filtered to retrieve the data of employees who were born between 1952 and 1955. From this table we found out that there are 133,776 employees who fit this criteria. 

![retirement_title](https://user-images.githubusercontent.com/111299372/202531937-528ee539-603a-4fe7-9f54-e08522501062.png)

* In the unique_titles.csv table we pulled data from the retirement_titles.csv table and then filtered the to_date to exclude employees who have already left the company. The unique_titles.csv table has four columns of data. These columns are: the employee number, first name, last name, and job title. This table shows that there are 72,458 employees who meet this criteria.

![unique_titles](https://user-images.githubusercontent.com/111299372/202533254-b024f0dc-79c5-489f-8115-c4eb5ff5e87e.png)

* In the retiring_titles.csv file we created a table with two columns of data. These two columns are the count of the titles retiring and the title of the job position. From this table we see that there are 7 job titles that are retiring. These seven job titles are: Senior Engineer, Senior Staff, Engineer, Staff, Technique Leader, Assistant Engineer, and Manager. 

![retiring_titles](https://user-images.githubusercontent.com/111299372/202533761-caa631f6-4d47-435d-a39a-3856a9c0b03b.png)


## Summary

