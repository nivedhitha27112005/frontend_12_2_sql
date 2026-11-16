CREATE DATABASE day5;
USE day5;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    department VARCHAR(30),
    salary DECIMAL(10,2),
    city VARCHAR(30),
    joining_date DATE
);

ALTER TABLE employees ADD email VARCHAR(100);
ALTER TABLE employees ADD phone_number VARCHAR(20);
ALTER TABLE employees MODIFY emp_name VARCHAR(100);

RENAME TABLE employees TO staff;
RENAME TABLE staff TO employees;

INSERT INTO employees
(emp_id, emp_name, age, gender, department, salary, city, joining_date)
VALUES
(1, 'Nivedhitha', 22, 'Female', 'IT', 40000, 'Sivaganga', '2023-01-15'),
(2, 'Akash', 25, 'Male', 'HR', 35000, 'Chennai', '2022-05-10'),
(3, 'Meena', 23, 'Female', 'IT', 52000, 'Madurai', '2024-02-20'),
(4, 'Sanjay', 29, 'Male', 'Sales', 30000, 'Trichy', '2021-08-12'),
(5, 'Kavya', 26, 'Female', 'HR', 42000, 'Chennai', '2023-06-18'),
(6, 'Praveen', 28, 'Male', 'Finance', 55000, 'Coimbatore', '2020-11-25'),
(7, 'Yazhini', 22, 'Female', 'IT', 28000, 'Madurai', '2025-01-05'),
(8, 'Gokul', 31, 'Male', 'Sales', 60000, 'Chennai', '2019-03-14'),
(9, 'Harini', 27, 'Female', 'Finance', 48000, 'Trichy', '2022-09-30'),
(10, 'Vignesh', 24, 'Male', 'IT', 32000, 'Coimbatore', '2024-07-22');

INSERT INTO employees
(emp_id, emp_name, age, gender, department, salary, city, joining_date)
VALUES
(11, 'Anu', 26, 'Female', 'HR', 28000, 'Sivaganga', '2024-05-15'),
(12, 'Karthi', 30, 'Male', 'Support', 39000, 'Madurai', '2022-12-01');

UPDATE employees SET salary = 48000 WHERE emp_name = 'Nivedhitha';
UPDATE employees SET department = 'IT' WHERE emp_name = 'Akash';
UPDATE employees SET salary = salary + 5000 WHERE department = 'IT';
UPDATE employees SET city = 'Chennai' WHERE department = 'Sales';
UPDATE employees SET email = 'kavya@example.com' WHERE emp_name = 'Kavya';

DELETE FROM employees WHERE salary < 30000;

SELECT * FROM employees;
SELECT emp_name, salary FROM employees;
SELECT emp_name, department, city FROM employees;
SELECT DISTINCT department FROM employees;
SELECT * FROM employees LIMIT 5;
SELECT emp_name AS employee_name FROM employees;

SELECT * FROM employees WHERE salary > 40000;
SELECT * FROM employees WHERE age < 25;
SELECT * FROM employees WHERE department = 'IT';
SELECT * FROM employees WHERE salary BETWEEN 30000 AND 50000;
SELECT * FROM employees WHERE department = 'IT' OR department = 'HR';
SELECT * FROM employees WHERE salary > 30000 AND age < 28;
SELECT * FROM employees WHERE department <> 'IT';
SELECT * FROM employees WHERE emp_name LIKE 'N%';
SELECT * FROM employees WHERE emp_name LIKE '%a';
SELECT * FROM employees WHERE joining_date > '2023-01-01';

SELECT COUNT(*) AS total_employees FROM employees;
SELECT SUM(salary) AS total_salary FROM employees;
SELECT AVG(salary) AS average_salary FROM employees;
SELECT MAX(salary) AS highest_salary FROM employees;
SELECT MIN(salary) AS lowest_salary FROM employees;
SELECT COUNT(*) AS chennai_employee_count FROM employees WHERE city = 'Chennai';

SELECT department, COUNT(*) AS employee_count FROM employees GROUP BY department;
SELECT department, AVG(salary) AS average_salary FROM employees GROUP BY department;
SELECT department, SUM(salary) AS total_salary FROM employees GROUP BY department;
SELECT department, MAX(salary) AS highest_salary FROM employees GROUP BY department;
SELECT city, COUNT(*) AS employee_count FROM employees GROUP BY city;

SELECT department, COUNT(*) AS employee_count FROM employees GROUP BY department HAVING COUNT(*) > 2;
SELECT department, AVG(salary) AS average_salary FROM employees GROUP BY department HAVING AVG(salary) > 40000;
SELECT department, SUM(salary) AS total_salary FROM employees GROUP BY department HAVING SUM(salary) > 80000;

SELECT * FROM employees ORDER BY salary ASC;
SELECT * FROM employees ORDER BY salary DESC;
SELECT * FROM employees ORDER BY emp_name ASC;
SELECT * FROM employees ORDER BY department ASC, salary DESC;

SELECT * FROM employees WHERE salary > 30000 ORDER BY salary DESC;

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

SELECT department, AVG(salary) AS average_salary
FROM employees
WHERE salary > 30000
GROUP BY department
HAVING AVG(salary) > 40000;

SELECT city, SUM(salary) AS total_salary
FROM employees
GROUP BY city
HAVING SUM(salary) > 80000
ORDER BY total_salary DESC;

SELECT department, COUNT(*) AS employee_count,
AVG(salary) AS average_salary,
SUM(salary) AS total_salary
FROM employees
WHERE age > 23
GROUP BY department
HAVING AVG(salary) > 35000
ORDER BY average_salary DESC;
