CREATE DATABASE day3;
USE day3;

CREATE TABLE employees (
    employee_ID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    department VARCHAR(30),
    salary INT,
    city VARCHAR(30),
    joining_date DATE
);

CREATE TABLE students (
    student_ID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    age INT,
    city VARCHAR(30),
    course VARCHAR(30)
);

CREATE TABLE products (
    product_ID INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(40) NOT NULL,
    category VARCHAR(30),
    price DECIMAL(8,2),
    stock INT
);

INSERT INTO employees
(name, department, salary, city, joining_date)
VALUES
("Hari", "IT", 48000, "Chennai", "2025-04-10"),
("Gokul", "IT", 32000, "Salem", "2025-08-21"),
("Naveen", "IT", 56000, "Chennai", "2024-05-16"),
("Janani", "HR", 36000, "Coimbatore", "2024-06-12"),
("Keerthana", "HR", 28000, "Madurai", "2025-02-18"),
("Vignesh", "Finance", 49000, "Trichy", "2024-10-25"),
("Deepak", "Finance", 65000, "Chennai", "2023-07-14"),
("Madhan", "Sales", 39000, "Kanchipuram", "2025-03-08"),
("Monisha", "Sales", 23000, "Chennai", "2025-05-19"),
("Praveen", "Support", 27000, "Tirupur", "2024-12-06");

INSERT INTO students
(name, age, city, course)
VALUES
("Ajay", 20, "Chennai", "MCA"),
("Nithya", 22, "Madurai", "BCA"),
("Pranav", 17, "Chennai", "BSc"),
("Harini", 24, "Coimbatore", "MCA"),
("Mohan", 19, "Madurai", "BCom"),
("Swetha", 26, "Chennai", "MBA"),
("Kishore", 25, "Chennai", "MCA");

INSERT INTO products
(product_name, category, price, stock)
VALUES
("Tablet", "Electronics", 32000, 12),
("Wireless Mouse", "Electronics", 850, 75),
("Bluetooth Speaker", "Electronics", 2400, 45),
("Dining Chair", "Furniture", 4200, 30),
("Computer Desk", "Furniture", 7200, 12),
("Drawing Book", "Stationery", 80, 250),
("Marker Set", "Stationery", 160, 180);

SELECT * FROM employees;

SELECT * FROM students;

SELECT * FROM products;

SELECT * FROM employees
WHERE department = "IT"
AND salary > 30000;

SELECT * FROM students
WHERE age BETWEEN 18 AND 25
AND city IN ("Chennai", "Madurai");

SELECT department,
COUNT(*) AS total_employees
FROM employees
GROUP BY department;

SELECT category,
SUM(stock) AS total_stock,
AVG(price) AS average_price
FROM products
GROUP BY category;

SELECT department,
AVG(salary) AS average_salary
FROM employees
WHERE salary > 25000
GROUP BY department
HAVING AVG(salary) > 40000;