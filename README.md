# MySQL Employee Management System

## Overview
Hi :)

This project is a comprehensive example of an employee management system for a company, built entirely using **MySQL**. The system is designed to handle and manage information related to departments, positions, employees, salary history, and projects within a company.

## Database Structure
The system is composed of the following tables:

### Departments
- **Purpose**: Stores information about the company's departments.
- **Columns**:
  - `id`: Unique identifier for each department.
  - `name`: Name of the department.
  - `location`: Location of the department.

### Positions
- **Purpose**: Holds details about every position in the company.
- **Columns**:
  - `id`: Unique identifier for each position.
  - `title`: Title of the position.
  - `description`: Description of the position.
  - `base_salary`: Base salary associated with the position.

### Employees
- **Purpose**: Contains information about the employees.
- **Columns**:
  - `id`: Unique identifier for each employee.
  - `name`: First name of the employee.
  - `last_name`: Last name of the employee.
  - `birth_date`: Date of birth of the employee.
  - `hiring_date`: Date the employee was hired.
  - `emp_end_date`: Date the employee left the company (if applicable).
  - `department_id`: Department ID to which the employee belongs.
  - `position_id`: Position ID of the employee.

### Salary_History
- **Purpose**: Tracks the salary history of each employee.
- **Columns**:
  - `salary_id`: Unique identifier for each salary entry.
  - `employee_id`: ID of the employee.
  - `salary`: Salary amount.
  - `start_date`: Start date of the salary.
  - `end_date`: End date of the salary (if applicable).

### Projects
- **Purpose**: Contains information about projects within the company.
- **Columns**:
  - `project_id`: Unique identifier for each project.
  - `name`: Name of the project.
  - `description`: Description of the project.

### Employees_Projects
- **Purpose**: Serves as an auxiliary table linking the `Projects` and `Employees` tables.
- **Columns**:
  - `employee_id`: ID of the employee involved in the project.
  - `project_id`: ID of the associated project.

## Project Status
This project is currently a work in progress. Here are the areas I am actively working on:

- **Security Enhancements**: Implementing levels of security to ensure data protection.
- **Query Optimization**: Improving the efficiency of SQL queries.
- **Additional Queries**: Adding more relevant queries to cover various use cases.
- **Indexes and Stored Procedures**: Introducing indexes for faster data retrieval and creating stored procedures for complex operations.

## How to Use
To explore or contribute to this project, follow these steps:

1. Clone the repository:  
   `git clone https://github.com/your-username/MySQL_employee_management_system.git`
2. Import the SQL script to set up the database.
3. Use your MySQL client to interact with the database.