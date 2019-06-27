delimiter |
CREATE TRIGGER on_salary_update
	After update ON employee
	FOR EACH ROW
	BEGIN
		DECLARE mng_salary int;
        DECLARE mng_ssn int;
        
        select Salary
        into mng_salary
        from employee , dept
        where dept.Dnumber = NEW.Dno and employee.Ssn = dept.Mgr_ssn;
        
        select Ssn
        into mng_ssn
        from employee , dept
        where dept.Dnumber = NEW.Dno and employee.Ssn = dept.Mgr_ssn;
        
        IF (mng_salary < New.Salary) THEN
			update employee
            set employee.Salary = New.Salary + 1
            where employee.Ssn = mng_ssn;
		END IF;
        
		
	END;
|
delimiter ;

select * from employee;

select * from dept;

SET FOREIGN_KEY_CHECKS=0;

update employee
set employee.Salary = 3000
where employee.Ssn = 17;

select * from employee;

SET FOREIGN_KEY_CHECKS=1;

drop trigger on_salary_update;