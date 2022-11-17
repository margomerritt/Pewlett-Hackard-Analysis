# Pewlett Hackard Analysis
## Overview of Project

### Purpose
The purpose of this project is to perform employee research for the company Pewlett Hackard. This analysis revolves around the companies retirement package. This project needs to answer the following two questions: Who will be retiring in the next few years? And how many positions will Pewlett Hackard need to fill? The goal of this analysis is to generate a list of all employees eligible for the retirement package.

### Resources

* Data Source: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
* Software: PostgreSQL 12, pgaAdmin 4

## Results
This project produced four tables in pgAdmin 4 that were then exported to csv files for further analysis. The four csv files that were produced are: retirement_titles.csv, unique_titles.csv, retiring_titles.csv, and mentorship_eligibilty.csv.
* In retirement_title.csv we pulled data from the Employees table and the Titles table to form a new table with six columns of data. The columns are employee number, first name, last name, title, from date, and to date. The data was then filtered to retrieve the data of employees who were born between 1952 and 1955. From this table we found out that there are 133,776 employees who fit this criteria. 

![retirement_title](https://user-images.githubusercontent.com/111299372/202531937-528ee539-603a-4fe7-9f54-e08522501062.png)

## Summary

