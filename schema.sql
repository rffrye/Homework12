CREATE DATABASE employees;
USE employees;

--department 
CREATE TABLE departments(
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(30) Not NULL
);

--role
CREATE TABLE role(
    id INT NOT NULL PRIMARY KEY,
    titles VARCHAR(30),
    salary DECIMAL,
    department_id INT
);

--employee
CREATE TABLE employee(
    id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
);