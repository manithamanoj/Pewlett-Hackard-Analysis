--Deliverable 1: The Number of Retiring Employees by Title

SELECT ep.emp_no,ep.first_name,ep.last_name,
        tl.title,tl.from_date,tl.to_date
--INTO retirement_titles
FROM employees as ep
INNER JOIN titles as tl
ON ep.emp_no=tl.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY ep.emp_no

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
-- INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT  COUNT (title)  as "Count",title
--INTO retiring_titles
FROM unique_titles 
GROUP BY  unique_titles.title
ORDER BY "Count" DESC
--Query toretrieve the number of employees by their most recent job title who are about to retire.
--Deliverable 2: The Employees Eligible for the Mentorship Program
SELECT DISTINCT ON (emp_no)  ep.emp_no,
    ep.first_name,
    ep.last_name,
	ep.birth_date,
	de.from_date,
	tl.to_date,
	tl.title
--INTO mentorship_eligibilty
FROM employees AS ep
INNER JOIN dept_emp AS de
ON ep.emp_no=de.emp_no
INNER JOIN titles AS tl
ON ep.emp_no=tl.emp_no
WHERE (ep.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
     AND (tl.to_date = '9999-01-01')
ORDER BY ep.emp_no;