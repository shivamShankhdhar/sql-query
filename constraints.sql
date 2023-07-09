use cdac;
create or replace view vu8 as
select employee_id,last_name,department_id,job_id from employees where department_id = 8;
describe vu8;
select * from vu8;
-- 2nd highest salary
select distinct(salary) from employees order by salary limit 2,1;

-- 3rd highest salary
select distinct(salary) from employees order by salary limit 2,1;