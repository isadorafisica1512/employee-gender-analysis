SELECT
    e.gender,
    COUNT(DISTINCT e.emp_no) AS number_of_managers
FROM t_employees e
JOIN t_dept_manager dm
    ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
GROUP BY
    e.gender
ORDER BY
    e.gender;
