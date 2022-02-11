# Pewlett-Hackard-Analysis
SQL Analysis
  
# INTRODUCTION  
  SQL is one of the most used languages in Data Analysis. Its ability to organize and query data, especially on a large scale, makes SQL knowledge a highly sought-after skill in the workforce. In this challenge we are  working for  Pewlett Hackard.
 
Here we use  our SQL skills to
determine the number of retiring employees per title and identify employees who are eligible to participate in a mentorship program using certain search criteria. Then, write a report that summarizes the analysis and helps prepare manager for the “silver tsunami” as many current employees reach retirement age

## Tools
 
* PostgreSQL 11- Database
* pgAdmin 4- interface
* Quick DBD


## Analysis
  First, we create Entity Relationship diagram (ERD) using Quick DBD 

### Entity Relationship diagram 

![EmployeeDB](https://user-images.githubusercontent.com/72629108/153668283-d317df7b-5d91-4870-b72c-2a9f61aafc2c.png)



### The Number of Retiring Employees by Title 

   We use SQL queries to create a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955.
### Retirement Titles table

<img width="655" alt="Screen Shot 2022-02-11 at 2 05 21 PM" src="https://user-images.githubusercontent.com/72629108/153670481-7fd98ab3-8d96-4004-a34c-b1f871a4a792.png">




There are duplicate entries for some employees because they have switched titles over the years.

 Then we use the DISTINCT ON statement to create a table that contains the most recent title of each employee, because some employees may have multiple titles in the database. Use the COUNT() function to create a table that has the number of retirement-age employees by most recent job title. Also, we exclude those employees who have already left the company. 

 ### Unique Titles table
 
 <img width="471" alt="Screen Shot 2022-02-11 at 2 05 55 PM" src="https://user-images.githubusercontent.com/72629108/153670549-5926c94a-c329-4bd7-b819-1831e21baee4.png">


### Retiring Titles table

<img width="214" alt="Screen Shot 2022-02-11 at 2 06 23 PM" src="https://user-images.githubusercontent.com/72629108/153670637-3afa6b88-43d5-43db-87d7-e5cb74aec6a5.png">


## The Employees Eligible for the Mentorship Program

Next, we write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.

### Mentorship Eligibility table

<img width="725" alt="Screen Shot 2022-02-11 at 2 07 18 PM" src="https://user-images.githubusercontent.com/72629108/153670881-456fbcc4-0b90-4094-b014-03eb864986a5.png">


## Summary
From the retiring_titles.csv we see that almost 50,000 employees who are about to retire are senior staffs. So, company can find and prepare eligible employees for next level positions.
72,458 positions will need to be filled as the "silver tsunami" begins to make an impact. The company can plan on hire employees to fill these positions. 
1549 employees are eligible to participate in a mentorship program. This data would give a better idea to plan on the mentorship program when new team members are hired.

Suggestion:

  If we can prepare a retirement table with number of years, designation and salary of each employee in this company, they could plan for an ideal retirement package for the employees.
 

