use cdac;
delimiter $$
	create procedure print_val(IN x int)
	begin
	declare str varchar(20);
	set str = ' ';
	while x<=5 do
		set str = concat(str,x,',');
		set x = x + 1;
	end while;
	select str;
end $$

call print_val(1);
-- loop,leave,iterate
-- Q1:pattern 1,2,3,4,5
delimiter $$ 
create procedure print_val3(IN x int,INOUT str varchar(16383))
begin
print1:loop
if x >5 then
leave print1;
end if;
if x <=5 then 
	set str = concat(str,x,',');
    set x = x + 1;
iterate print1;
end if;
end loop;
end $$
drop procedure print_val3;
set @str = '';
call print_val3(1,@str);
select @str;

-- Q2: pattern 1,5,25,625,3125
delimiter $$ 
create procedure print_val3(IN x int,INOUT str varchar(16383))
begin
print1:loop
if x >3125 then
leave print1;
end if;
if x <=3125 then 
	set str = concat(str,x,',');
    set x = x * 5;
iterate print1;
end if;
end loop;
end $$
drop procedure print_val3;
set @str = '';
call print_val3(1,@str);
select @str;