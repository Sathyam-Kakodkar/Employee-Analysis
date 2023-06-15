select max(salary) from t_salaries;

select min(salary) from t_salaries;

drop procedure if exists filter_salary;

delimiter $$
create procedure filter_salary ( IN p_min_salary float, IN p_max_salary float)
begin
select 
e.gender , d.dept_name, avg(s.salary) as salary
from 
t_salaries s 
join
t_employees e on s.emp_no = e.emp_no
join
t_dept_emp de on e.emp_no = de.emp_no
join
t_departments d on de.dept_no = d.dept_no
 where salary between p_min_salary and p_max_salary
group by e.gender, d.dept_no;
end$$

delimiter ;

call filter_salary(50000, 90000);





