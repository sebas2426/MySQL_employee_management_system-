-- Add into Departments
INSERT INTO departments(dep_name,dep_location) VALUES('IT','Building C');
INSERT INTO departments(dep_name,dep_location) VALUES('RRHH','Building B');
INSERT INTO departments(dep_name,dep_location) VALUES('General Services','Building A');
SELECT * FROM departments;

-- Add into Positions
INSERT INTO Positions(pos_title,pos_description,pos_base_salary) VALUES('Junior Developer','Help building the software from the company','1200.00');
INSERT INTO Positions(pos_title,pos_description,pos_base_salary) VALUES('Cleaning','Cleans the instalations of the company','800.00');
INSERT INTO Positions(pos_title,pos_description,pos_base_salary) VALUES('Senior Developer','Create software for the company. Lead the IT team','5000.00');
SELECT * FROM Positions;

-- Add into Employees
INSERT INTO Employees(emp_name,emp_last_name,emp_birth_date,emp_hiring_date,emp_end_date,dep_id,pos_id) VALUES('John','Carmak','1985-06-23','2000-01-01',NULL,1,3);
INSERT INTO Employees(emp_name,emp_last_name,emp_birth_date,emp_hiring_date,emp_end_date,dep_id,pos_id) VALUES('María','López','1988-05-12','2010-04-01','2018-05-24',3,2);
INSERT INTO Employees(emp_name,emp_last_name,emp_birth_date,emp_hiring_date,emp_end_date,dep_id,pos_id) VALUES('Juan','Batistuta','2001-03-20','2018-06-12',NULL,1,1);
SELECT * FROM Employees;

-- Add into Salary_History
INSERT INTO Salary_History(emp_id,sal_salary,sal_start_date,sal_end_date) VALUES(1,5500.00,'2000-01-01',NULL);
INSERT INTO Salary_History(emp_id,sal_salary,sal_start_date,sal_end_date) VALUES(2,850.00,'2010-04-01','2018-05-24');
INSERT INTO Salary_History(emp_id,sal_salary,sal_start_date,sal_end_date) VALUES(3,1000.00,'2018-06-12',NULL);
SELECT * FROM Salary_History;


-- Add into Projects
INSERT INTO Projects(pro_name,pro_description) VALUE('Random app 1','This is the best app we ever made, but it is still in process so...');
INSERT INTO Projects(pro_name,pro_description) VALUE('Random app 2','This is not the best app we ever made :(');
SELECT * FROM Projects;

-- Add into Employees_Projects
INSERT INTO Employees_Projects(emp_id,pro_id) VALUES(1,1);
INSERT INTO Employees_Projects(emp_id,pro_id) VALUES(3,1);
SELECT * FROM Employees_Projects;
