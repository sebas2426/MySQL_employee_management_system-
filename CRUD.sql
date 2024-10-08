-- CRUD (CREATE, READ, UPDATE, DELETE)
-- CREATE
	-- Insert into Departments
		INSERT INTO Departments(dep_name, dep_location) VALUES('xxx','xxx');
        SELECT * FROM Departments;
        
	-- Insert into Positions
		INSERT INTO Positions(pos_title, pos_description, pos_base_salary) 
        VALUES('xxx','xxx',xxx.xx);
        SELECT * FROM Positions;
        
	-- Insert into Employees
		INSERT INTO Employees(emp_name, emp_last_name, emp_birth_date, emp_hiring_date, emp_end_date, dep_id, pos_id) 
        VALUES('xxx','xxx','xxx-xx-xx','xxxx-xx-xx','xxxx-xx-xx',x,x);
        SELECT * FROM Employees;
        
	-- Insert into Salary_History
		INSERT INTO Salary_History(emp_id, sal_salary, sal_start_date, sal_end_date) VALUES(x,xxx.xx,'xxxx-xx-xx','xxxx-xx-xx');
        SELECT * FROM Salary_History;
        
	-- Insert into Projects
		INSERT INTO Projects(pro_name, pro_description) VALUE('xxx','xxxx');
        SELECT * FROM Projects;
        
	-- Insert into Employees_Projects
		INSERT INTO Employees_Projects(emp_id, pro_id) VALUES(x,x);
        SELECT * FROM Employees_Projects;
-- READ
	-- List all employees with all his data
	SELECT E.emp_id AS ID, E.emp_name AS Name, E.emp_last_name AS 'Last Name', E.emp_hiring_date AS 'Hiring Date', E.emp_end_date AS 'End Date', D.dep_name AS Department, P.pos_title AS Position, S.sal_salary AS Salary FROM Employees E JOIN Departments D ON E.dep_id=D.dep_id
	JOIN Positions P ON E.pos_id=P.pos_id JOIN Salary_History S ON E.emp_id=S.emp_id;

	-- Lists number of employees per department
	SELECT D.dep_name AS Department, COUNT(E.emp_id) AS 'Number of Employees' 
	FROM Departments D JOIN Employees E ON D.dep_id=E.dep_id GROUP BY D.dep_name; 

	-- Average Salary per department
	SELECT D.dep_name AS Department,ROUND(AVG(S.sal_salary),2) AS 'Average Salary'
	 FROM Departments D JOIN Employees E ON D.dep_id=E.dep_id JOIN Salary_History S ON E.emp_id=S.emp_id GROUP BY D.dep_name;
	 
	 -- Employees that are working in a project
	 SELECT E.dep_id AS 'Department ID',E.emp_id AS 'Employee ID' ,E.emp_name AS 'Employee Name', P.pro_name AS 'Project Name' FROM Employees E JOIN Employees_Projects EP ON E.emp_id=EP.emp_id
	 JOIN Projects P ON EP.pro_id=P.pro_id;

-- UPDATE
	-- Update the department of an employee
		UPDATE Employees SET dep_id=x WHERE emp_id=x;
        
	-- Update the position of an employee
		UPDATE Employees SET pos_id=x WHERE emp_id=x;
        
	-- Update the salary of an employee
		UPDATE Salary_History SET sal_salary=xxxx WHERE emp_id=x AND sal_end_date IS NULL;
        
	-- Update the project on which one employee is working
		Update Employees_Projects SET pro_id=x WHERE emp_id=x;
        
	-- Update a project description
		UPDATE Projects SET pro_description='xxxx' WHERE pro_id=x;
-- DELETE
	-- Delete employees (This query also deletes all records of the employee from other tables.)
		DELETE FROM Employees WHERE emp_id=x;
    
    	-- Delete employees that are no working in the company (This query also deletes all records of the employee from other tables.)
		DELETE FROM Employees WHERE emp_id=x AND emp_end_date IS NOT NULL;
        
	-- Delete a department
		DELETE FROM Departments WHERE dep_id=x;
	
   	 -- Delete a project (This query also deletes all records of the project from other tables).
		DELETE FROM Projects WHERE pro_id=x;
