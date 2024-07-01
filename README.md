MySQL_employee_management_system <br>
Hi :)

This project that I made is an example of a management system for employees in a company. I only used MySQL.

## Structure of the tables:
  -)**Departments**: Information about the departments in the company. It contains the id, name, and location of each department.
  Positions: Information about every position in the company. It contains the id, title, a description, and a base salary for each position in the company.
  <br>
  -)**Employees**: Information about every employee in the company. It contains the id, name, last name, birth date, hiring date, the date the employee left the company (emp_end_date), the department id, and the position id for each employee.
  <br>
  -)**Salary_History**: Information about the salary of each employee and the changes across history. It contains the salary id, employee id, salary, start date of the salary, and end date of the salary for each employee.
  <br>
  -)**Projects**: Information about every project in the company. It contains the project id, name, and description for each project in the company.
  <br>
  -)**Employees_Projects**: It's an auxiliary table between the Projects and the Employees table. It contains the employee id and the project id.

## Information about the project:
It's not finished yet. I'm actually working on:
<br>
  -Completing the CRUD (Update, Delete)<br>
  -Optimizing the SQL queries<br>
  -Adding more relevant queries<br>
  -Adding indexes and stored procedures<br>
  -Adding levels of security
