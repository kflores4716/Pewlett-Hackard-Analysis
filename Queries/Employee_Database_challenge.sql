SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
--INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
	ON (e.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;



-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) 
	emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Creating retiring_titles table
SELECT COUNT(title),
	title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

-- Creating the Mentorship Eligibility Table
SELECT DISTINCT ON(e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
Into mentorship_eligibility
FROM employees AS e
INNER JOIN dept_employees AS de
	ON e.emp_no = de.emp_no
INNER JOIN titles AS t
	ON e.emp_no = t.emp_no
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

-- Creating mentorship_titles table
SELECT COUNT(title),
	title
INTO mentorship_titles
FROM mentorship_eligibility
GROUP BY title
ORDER BY count DESC;

-- Creating the Mentorship Eligibility Expanded Table
SELECT DISTINCT ON(e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
Into mentorship_eligibility_expanded
FROM employees AS e
INNER JOIN dept_employees AS de
	ON e.emp_no = de.emp_no
INNER JOIN titles AS t
	ON e.emp_no = t.emp_no
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1962-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

-- Creating mentorship_titles_expanded table
SELECT COUNT(title),
	title
INTO mentorship_titles_expanded
FROM mentorship_eligibility_expanded
GROUP BY title
ORDER BY count DESC;


SELECT * FROM retiring_titles;

SELECT COUNT(*) FROM mentorship_eligibility;