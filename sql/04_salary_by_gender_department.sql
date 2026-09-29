SELECT
    d.dept_name,
    e.gender,
    AVG(s.salary) AS average_salary
FROM t_employees e
JOIN t_salaries s
    ON s.emp_no = e.emp_no
JOIN t_dept_emp de
    ON de.emp_no = e.emp_no
JOIN t_departments d
    ON d.dept_no = de.dept_no
WHERE s.to_date = '9999-01-01'
  AND de.to_date = '9999-01-01'
GROUP BY
    d.dept_name,
    e.gender
ORDER BY
    d.dept_name,
    e.gender;
