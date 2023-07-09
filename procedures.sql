use cdac;
DELIMITER $$
create procedure getTotalDept()
BEGIN
DECLARE deptCount int;
SELECT count(*) into deptCount from departments;
select concat('Total Departments: ',deptCount);
END $$

call getTotalDept();

