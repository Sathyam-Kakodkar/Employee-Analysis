use employees_mod;

SELECT 
    distinct emp_no , from_date, to_date
FROM
    t_dept_emp;
    
SELECT 
    YEAR(d.from_date) AS calendar_year,
    e.gender,
    COUNT(e.emp_no) AS num_of_employees
FROM
    t_employees e
        JOIN
    t_dept_emp d ON e.emp_no = d.emp_no
GROUP BY calendar_year , gender
HAVING calendar_year >= 1990;
