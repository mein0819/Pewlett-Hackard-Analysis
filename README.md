# Pewlett-Hackard Analysis

## Project Overview

The purpose of this project is to further analyze data for employees approaching retirement. Two tables have been created to add to the database, one that shows the number of retiring employees per job title, and one that shows employees who are eligible to participate in a mentorship program for new employees. This information will be used to help Pewlett Hackard management prepare for the anticipated wave of retiring employees across all departments.

## Resources
- employees.csv, departements.csv, dept_manager.csv, emp_info.csv, salaries.csv, titles.csv
- PostgreSQL 11, pgAdmin 4

## Analysis

The table showing the number of retiring employees per job title shows employees born between January 1, 1952 and December 31, 1955, and groups each unique employee number to the most recent job title. The table showing the employees eligible for the mentorship program pulls employees born in 1965. From this data we can see:
- 72,458 employees will be eligible for retirement over the next 3 years, accounting for 30% of the current 
  workforce       
- Of these employees, there will be 50,844 senior level and management positions to be filled
- There will be 21,614 mid to entry-level and staff positions to be filled
  
  ![retiring_titles](https://github.com/mein0819/Pewlett-Hackard-Analysis/blob/main/readMe_images/retiring_titles.png)
 
- There are 1,549 employees eligible to partcipate as mentors in the mentorship program

![mentorship table](https://github.com/mein0819/Pewlett-Hackard-Analysis/blob/main/readMe_images/mentorship_table.png)

## Summary

As shown above, 72,458 employees are set to retire in the near future, with senior-level positions accounting for well over half of that number. There are only 1,549 employees eligible to be mentors based on their age from being born in 1965. The following table shows the number of those employees grouped by their title: 

![mentor title count](https://github.com/mein0819/Pewlett-Hackard-Analysis/blob/main/readMe_images/mentor_count_title.png)

There's almost a 70:1 ratio of future vacant senior level positions to senior level mentors. There will need to be furthur analysis into expanding the requirements for eligibility to be a part of the mentorship program. There should also be furthur analysis into developing an intercompany pipeline to fill these roles as well as deciding how many positions should be filled from candidates outside of the company. The company also has the option of using this time to look into if streamlining the company is viable. It's possible some of these postions aren't necessary or can be consolidated into other positions or departments. 
