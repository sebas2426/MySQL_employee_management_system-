-- Create the database
CREATE DATABASE employee_management_system;
USE employee_management_system;
CREATE TABLE IF NOT EXISTS Departments(
	dep_id INT AUTO_INCREMENT PRIMARY KEY,
    dep_name VARCHAR(50),
    dep_location VARCHAR(100)
);
CREATE TABLE IF NOT EXISTS Positions(
	pos_id INT AUTO_INCREMENT PRIMARY KEY,
    pos_title VARCHAR(50) NOT NULL,
    pos_description TEXT,
    pos_base_salary DECIMAL(10,2)
);
CREATE TABLE IF NOT EXISTS Employees(
	emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    emp_last_name VARCHAR(50) NOT NULL,
    emp_birth_date DATE,
    emp_hiring_date DATE NOT NULL,
    emp_end_date DATE,
    dep_id INT NOT NULL,
    pos_id INT NOT NULL,
    FOREIGN KEY(dep_id) REFERENCES Departments(dep_id),
    FOREIGN KEY(pos_id) REFERENCES Positions(pos_id)
);
CREATE TABLE IF NOT EXISTS Salary_History(
	sal_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT,
    sal_salary DECIMAL(10,2),
    sal_start_date DATE,
    sal_end_date DATE,
    FOREIGN KEY(emp_id) REFERENCES Employees(emp_id) ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS Projects(
	pro_id INT AUTO_INCREMENT PRIMARY KEY,
    pro_name VARCHAR(75),
    pro_description TEXT
);
CREATE TABLE IF NOT EXISTS Employees_Projects(
	emp_id INT,
    pro_id INT,
    FOREIGN KEY(emp_id) REFERENCES Employees(emp_id),
    FOREIGN KEY(pro_id) REFERENCES Projects(pro_id)
);
