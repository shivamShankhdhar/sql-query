use cdac;
show tables;
select * from employees;
select * from departments;
select employees.employee_id,employees.first_name,employees.last_name,departments.department_name,departments.department_id from employees cross join departments;
select
e.employee_id,e.first_name,e.last_name,e.salary,e.department_id,d.department_id,d.department_name from employees e INNER JOIN departments d
on (e.department_id=d.department_id);
select
e.employee_id,e.last_name,e.salary,d.department_id,d.department_name,l.city
from employees e INNER JOIN departments d
on (e.department_id = d.department_id)
INNER JOIN locations l
on (d.location_id = l.location_id );
