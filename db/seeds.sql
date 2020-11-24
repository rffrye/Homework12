use employees;


--- insert data into department
INSERT INTO department
    (name)
VALUES
    ('Development'), ('Quality Assurance'), ('Human Resources'), ('Operations');


--- insert data into role
INSERT INTO role
    (title, salary, department_id)
VALUES
    ('Development Lead', 150000, 1), ('Developer', 100000, 1),
    ('Lead Test Engineer', 150000, 2), ('Test Engineer', 100000, 2),
    ('HR Manager', 110000, 3), ('HR Representive', 80000, 3),
    ('Operations Lead', 140000, 4), ('Operations Engineer', 90000, 4);


--- insert data into employee
INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Barry', 'Lee', 1, NULL), ('Janice', 'Teller', 2, 1), ('John', 'McCruch', 3, NULL),
    ('Erin', 'Barker', 4, 3), ('Brad', 'March', 5, NULL), ('Patrice', 'Berg', 6, 5),
    ('David', 'Kraj', 7, NULL), ('Jake', 'Addams', 8, 7);


SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;

--- Queries

-- Show all --  
SELECT e.first_name, e.last_name, e.id AS employee_id, r.salary, r.role_title, d.department_name
FROM employee e
LEFT JOIN employee em ON e.manager_id = em.id
INNER JOIN role r ON e.role_id = r.id
INNER JOIN department d ON r.department_id = d.id
ORDER BY e.id;

-- Viewing by Employments Department-- 
SELECT d.department_name, e.first_name, e.last_name, e.id AS employee_id, r.salary, r.role_title
FROM employee e
LEFT JOIN employee em ON e.manager_id = em.id
INNER JOIN role r ON e.role_id = r.id
INNER JOIN department d ON r.department_id = d.id
ORDER BY d.department_name;


SELECT d.department_name AS Department, r.role_title AS Postion, r.salary AS Salary
FROM department d
RIGHT JOIN role r ON r.department_id = d.id
ORDER BY d.department_name;

SELECT role_title, salary FROM role
ORDER BY role_title; 