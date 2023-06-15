use employees_mod;

select d.dept_name, e.gender, year(s.from_date) as calendar_year, avg(s.salary) as salary
from
t_employees e 
join 
t_dept_emp de on e.emp_no = de.emp_no
join
t_departments d on de.dept_no = d.dept_no
join
t_salaries s on e.emp_no = s.emp_no
group by calendar_year, e.gender, d.dept_no
having calendar_year <= 2002;