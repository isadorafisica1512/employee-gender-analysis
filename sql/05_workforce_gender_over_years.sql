WITH years AS (
    SELECT 1990 AS calendar_year
    UNION ALL SELECT 1991
    UNION ALL SELECT 1992
    UNION ALL SELECT 1993
    UNION ALL SELECT 1994
    UNION ALL SELECT 1995
    UNION ALL SELECT 1996
    UNION ALL SELECT 1997
    UNION ALL SELECT 1998
    UNION ALL SELECT 1999
    UNION ALL SELECT 2000
    UNION ALL SELECT 2001
    UNION ALL SELECT 2002
)

SELECT
    y.calendar_year,
    e.gender,
    COUNT(DISTINCT e.emp_no) AS number_of_employees
FROM years y
JOIN t_dept_emp de
    ON de.from_date <= CONCAT(y.calendar_year, '-12-31')
    AND de.to_date >= CONCAT(y.calendar_year, '-01-01')
JOIN t_employees e
    ON e.emp_no = de.emp_no
GROUP BY
    y.calendar_year,
    e.gender
ORDER BY
    y.calendar_year,
    e.gender;
