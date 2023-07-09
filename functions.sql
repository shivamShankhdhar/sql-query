use cdac;
delimiter $$
create function func1(v_empid int)
returns char deterministic
begin
	declare grade char(2);
    declare v_sal int;
    select salary into v_sal from employees where employee_id=v_empid;
    
    if v_sal <= 5000 then
		set grade = 'C';
	elseif v_sal between 5001 and 10000 then
		set grade = 'B';
	elseif v_sal >10000 then
		set grade = 'A';
	else 
		set grade = 'No grade';
	end if;
    return grade;
end $$
select first_name,last_name,salary,func1(104) from employees where employee_id =104;
    