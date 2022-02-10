# Pewlett-Hackard-Analysis
## Overview of Analysis 

This analysis was conducted to help Pewlett Hackard determine which employees will be eligible to retire in the next few years, as well as how many positions they will eventually need to fill. They also want a new set of data that lists all the employees eligible for their mentorship program, which they are launching to aid with the transition of roles from retiring employees to other existing employees. Partnering with Pewlett Hackard employee, Bobby, we used the pgAdmin PostgreSQL application to sort through the provided csv files and create filtered lists of these older employees and the positions they hold in the company, as well as the list of employees eligible for the mentorship program. The original csv files used were: 

Departments.csv 

Dept_emp.csv 

Dept_manager.csv 

Employees.csv 

Salaries.csv 

Titles.csv 

All other csv files included in this repository were created using SQL. 

  

  

  

## Results 

As mentioned earlier, Pewlett Hackard was looking for information regarding employees who are eligible to retire in the coming years, as well as the positions they hold in the company. To illustrate this information, we first created three new data tables titled `retirement_titles`, `unique_titles`, and `retiring_titles`. Once these tables were created, we then parsed the data again, this time to create a table with employees eligible for the mentorship program and titled that new table `mentorship_eligibility`. After we completed these desired tables, there were a few major points that we found from the results. 

There are a total of 72,458 employees eligible to retire in the next few years. 

#### Count of Retiring Employees

![Retiring_employee_count](https://user-images.githubusercontent.com/94764735/153480204-ea1defb9-c748-4283-96c6-d99609eeab66.png)

Approximately 70.17% of the eligible employees are senior level employees (25,916 are Senior Engineers and 24,926 are Senior Staff). 

#### Retiring Employees by Title

![retiring_titles](https://user-images.githubusercontent.com/94764735/153480238-6b9ba134-a553-43ed-97cf-0304e088e9d2.png)

Only 29.83% of employees eligible to retire are mid-to-low level employees (9,285 Engineers, 7,636 Staff, 3,603 Technique Leaders, 1,090 Assistant Engineers, and 2 Managers). 

There are only 1,549 current employees who are eligible to participate in the mentorship program. 

#### Count of Employees Eligible for Mentorship Program

![mentorship_eligibility_count](https://user-images.githubusercontent.com/94764735/153480324-9d01f60c-4226-4c59-bdf7-822d495be2a3.png)
  

## Summary 

There are two main questions that we want to answer for Pewlett Hackard: 

How many roles will need to be filled as the “silver tsunami” begins to make an impact? 

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? 

To answer the **first question**, there are a total of 72,458 that are eligible to retire. Although they likely aren’t going to retire all at the same time this does leave a sizeable gap for Pewlett Hackard to fill. They should look to their mentorship program to prepare them for the coming wave of retirements, that way they aren’t caught off guard if several employees start retiring around the same time.  

That brings us to the **second question**. According to the current qualifying criteria for a mentorship program, there are only a total of 1,549 employees that are eligible. This means that there is only one employee eligible for mentorship for every 47 retirees, which is not a great ratio. There are plenty of retirement-ready employees to serve as mentors, however, it is concerning how few employees are eligible to be mentored.  

 

To be sure that there really aren’t enough eligible mentees, we created an additional table to break down the eligible mentors by title. We then compared that table to the existing retiring_titles table to see if there were enough eligible mentees for each department. See the tables below: 

#### Retiring Employees by Title (for reference)

![retiring_titles](https://user-images.githubusercontent.com/94764735/153480348-f71ca7d4-40fd-45e5-bcc0-86cb7722e171.png)

#### Mentorship-Eligible EMployees by Title

![mentorship_titles](https://user-images.githubusercontent.com/94764735/153481399-9d46d4c8-8bb5-478e-b376-aec67d2d0aa0.png)


As you can see, comparing these two tables paints a concerning picture. Every job title has at least 10 times as many retiring employees as eligible mentees. In fact, there are even some job titles that don’t have a single eligible mentee. Due to this large discrepancy, it would be wise consider expanding the eligibility criteria for mentorship. The potential retirees table includes employees from a three-year range of birth dates (1952-1955), but the mentorship eligibility table only includes employees born in 1965. We would recommend expanding the birth year range to three years just like how it is with the retiree data. If we expand mentee data to a similar range, say 1962-1965, this would close the gap between the number of retirees and number of mentees. See below for a new mentorship_titles table including 1962-1965. It is much better matched than the original group of mentors: 

#### Mentorship Eligibility with Expanded Birth Date Range of 1962-1965

![mentorship_titles_expanded](https://user-images.githubusercontent.com/94764735/153481037-4ccf6633-6703-4d42-8dc5-a323e3d8ced0.png)

##### Retiring Employees by Title (for reference)

![retiring_titles](https://user-images.githubusercontent.com/94764735/153480430-3df85ce0-14a9-4f97-9d3f-5a983a026400.png)

#### Count of Mentorship-Eligible Employees After Birth Date Range Expanded to 1962-1965

![mentorship_eligibility_expanded_count](https://user-images.githubusercontent.com/94764735/153481096-6def6b65-35b7-401b-bb39-0d274e0c2889.png)

This new, expanded group of mentees would be much better suited to fill the gaps left by the retirement-ready employees as they start to retire. By expanding the eligibility requirements for mentorship, Pewlett Hackard can ensure that the jobs in their company are left in enough hands for the task. It would help prevent a situation where there are only a few mentored employees having to fill the roles of tens or even hundreds of retired employees, just in case there is a period where that many employees retire all around the same time. Although we aren’t the decision-makers for Pewlett Hackard, we hope that this insight is reviewed by the company and taken seriously. Perhaps it can positively impact their mentorship program moving forward, and help them be better prepared for a mass exodus of employees. 
