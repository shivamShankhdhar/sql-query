use cdac;
DELIMITER $$
create procedure getTotalDept()
BEGIN
DECLARE deptCount int;
SELECT count(*) into deptCount from departments;
select concat('Total Departments: ',deptCount);
END $$

call getTotalDept();

-- Q:write PL/SQL procedure to display the name, salary, department of that employee with the given employee id = 105;
DELIMITER $$
create procedure employeeDet()
BEGIN 
DECLARE e_name varchar(40);
DECLARE e_sal,e_dept_id int;
SELECT first_name,salary,department_id INTO e_name,e_sal,e_dept_id FROM employees WHERE employee_id=105;
select e_name,e_sal,e_dept_id;
END $$
call employeeDet();


-- write PL/SQL procedure to display employee id, salary, job id, manager whose last name = 'ernst'
select * from employees;
DELIMITER $$ 
CREATE PROCEDURE empDetails()
BEGIN
DECLARE emp_id,e_sal,e_job_id,e_manager_id int;
DECLARE e_last_name VARCHAR(40);
SELECT employee_id,last_name,salary,job_id,manager_id INTO emp_id,e_last_name,e_sal,e_job_id,e_manager_id FROM employees WHERE last_name = 'Ernst';
select emp_id,e_last_name,e_sal,e_job_id,e_manager_id;
END $$
call empDetails();

-- Q: Write PL/SQL to display employee_id, manager_id,job of employees whose last name ='King'.
DELIMITER ##
CREATE PROCEDURE lastNameKingEmp()
BEGIN
DECLARE e_id,m_id,job_id int;
select employee_id,manager_id,job_id INTO e_id,m_id,job_id from employees where last_name='King';
select e_id,m_id,job_id;
END##
call lastNameKingEmp();

-- Q write PL/SQL to display department number, department name,whose location id = 1800.

