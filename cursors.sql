use cdac;
delimiter $$
	CREATE PROCEDURE p22(IN v_dep INT)
    BEGIN
    DECLARE v_empid,v_sal INT;
    DECLARE v_name varchar(40);
    DECLARE finished int;
    DECLARE curdep CURSOR FOR SELECT 
		employee_id,last_name,salary,department_id FROM employees WHERE department_id =v_dep;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;
        OPEN curdep;
        getdept:LOOP
        FETCH curdep INTO v_empid,v_name,v_sal,v_dep;
        IF finished = 1 THEN 
        LEAVE getdept;
        END IF;
        SELECT v_empid,v_name,v_sal,v_dep;
        END LOOP getdept;
	CLOSE curdep;
END $$
CALL p22(6);