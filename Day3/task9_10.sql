USE day2;

CREATE TABLE books(
book_ID INT PRIMARY KEY AUTO_INCREMENT,
book_name VARCHAR(50) NOT NULL,
author VARCHAR(30) NOT NULL,
price DECIMAL(8,2),
published_date DATE
);

INSERT INTO books(book_name,author,price,published_date) VALUES
("Atomic Habits","James Clear",420.00,"2018-10-16"),
("Ikigai","Hector Garcia",350.00,"2016-09-01"),
("The Silent River","Ravi Kumar",280.00,"2020-05-12"),
("Learning SQL","Alan Beaulieu",650.00,"2020-04-15"),
("The Power of Mind","John Smith",450.00,"2019-08-20");

SELECT * FROM books;

TRUNCATE TABLE books;

SELECT * FROM books;


CREATE DATABASE day8;
USE day8;

CREATE TABLE departments(
department_ID INT PRIMARY KEY AUTO_INCREMENT,
department_name VARCHAR(30) NOT NULL,
location VARCHAR(30),
manager VARCHAR(30)
);

CREATE TABLE employees(
employee_ID INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30) NOT NULL,
department_ID INT,
salary INT,
city VARCHAR(30),
joining_date DATE
);

INSERT INTO departments(department_name,location,manager) VALUES
("Development","Chennai","Karthik"),
("Marketing","Coimbatore","Priya"),
("Accounts","Trichy","Arun"),
("Operations","Madurai","Meena"),
("Testing","Salem","Vignesh");

INSERT INTO employees(name,department_ID,salary,city,joining_date) VALUES
("Hari",1,42000,"Chennai","2025-05-10"),
("Gokul",1,32000,"Salem","2025-07-20"),
("Nithya",2,55000,"Coimbatore","2024-04-15"),
("Vijay",3,48000,"Trichy","2024-10-12"),
("Divya",4,38000,"Madurai","2025-02-08");

SELECT * FROM departments;

SELECT * FROM employees;

DROP TABLE departments;

SHOW TABLES;

DROP DATABASE day8;

SHOW DATABASES;