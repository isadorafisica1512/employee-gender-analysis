SELECT
    d.dept_name,
    e.gender,
    COUNT(DISTINCT e.emp_no) AS number_of_employees
FROM t_employees e
JOIN t_dept_emp de
    ON de.emp_no = e.emp_no
JOIN t_departments d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
GROUP BY
    d.dept_name,
    e.gender
ORDER BY
    d.dept_name,
    e.gender;
