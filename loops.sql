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
delimiter $$ 
create procedure print_val2(IN x int,INOUT str varchar(10))
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

set @str = '';
call print_val2(1,@str);
select @str;
