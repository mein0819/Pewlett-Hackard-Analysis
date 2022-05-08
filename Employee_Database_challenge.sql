-- Create retirement titles table to hold all titles of 
-- employees born between Jan. 1 1952 and Dec. 31 1955
SELECT e.emp_no,
		e.first_name,
		e.last_name,
		t.title,
		t.from_date,
		t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

-- Create Unique Titles table to store most recent titles
-- of employees from retirement titles table
SELECT DISTINCT ON (rt.emp_no)
					rt.emp_no,
					rt.first_name,
					rt.last_name,
					rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no, rt.to_date DESC;


--Retrieve the number of employees by their most recent
--job title who are about to retire
SELECT COUNT(ut.title) AS "Count", ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title 
ORDER BY "Count" DESC;

--Retrieve data to create Mentorship Eligibility table
-- that holds the employees who are eligible to participate
--in a mentorship program
SELECT DISTINCT ON (e.emp_no)
					e.emp_no,
					e.first_name,
					e.last_name,
					e.birth_date,
					de.from_date,
					de.to_date,
					t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE de.to_date = '9999-01-01' 
AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY e.emp_no;