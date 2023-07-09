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
