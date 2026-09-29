SELECT
    e.gender,
    COUNT(DISTINCT dm.emp_no) AS number_of_managers
FROM t_dept_manager dm
JOIN t_employees e
    ON dm.emp_no = e.emp_no
GROUP BY e.gender
ORDER BY e.gender;
