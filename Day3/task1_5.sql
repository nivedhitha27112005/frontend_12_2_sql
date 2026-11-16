CREATE DATABASE day2;
USE day2;

CREATE TABLE students(
student_ID INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30),
age INT,
email VARCHAR(30) UNIQUE,
course VARCHAR(30),
fees INT,
admission_date DATE
);

RENAME TABLE students TO student_details;

ALTER TABLE student_details ADD mobile_number VARCHAR(20) AFTER email;


CREATE TABLE employees(
employee_ID INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30),
salary INT,
department VARCHAR(30) DEFAULT 'Development',
joining_date DATE,
city VARCHAR(30)
);

ALTER TABLE employees RENAME COLUMN name TO employee_name;

ALTER TABLE employees MODIFY salary DECIMAL(12,2);

ALTER TABLE employees ADD email VARCHAR(30) UNIQUE AFTER employee_name;


CREATE TABLE products(
product_ID INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
product_name VARCHAR(30) NOT NULL,
price INT,
category VARCHAR(30) DEFAULT 'Electronics',
stock VARCHAR(30) CHECK (stock = 'In Stock'),
manufacturing_date DATE
);

RENAME TABLE products TO product_details;

ALTER TABLE product_details RENAME COLUMN price TO product_price;

ALTER TABLE product_details DROP COLUMN manufacturing_date;


CREATE TABLE patients(
patient_ID INT PRIMARY KEY AUTO_INCREMENT,
patient_name VARCHAR(30) NOT NULL,
age INT,
gender VARCHAR(20),
disease VARCHAR(30),
admission_date DATE,
doctor_name VARCHAR(30)
);

ALTER TABLE patients RENAME COLUMN disease TO diagnosis;

ALTER TABLE patients ADD contact_number INT AFTER gender;

ALTER TABLE patients MODIFY patient_name VARCHAR(150);

RENAME TABLE patients TO patient_records;


CREATE TABLE courses(
course_ID INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(30) NOT NULL,
duration VARCHAR(20) DEFAULT '6',
fees INT CHECK (fees > 1000),
trainer_name VARCHAR(30),
start_date DATE
);

ALTER TABLE courses ADD course_status BOOLEAN DEFAULT 1;

ALTER TABLE courses RENAME COLUMN trainer_name TO instructor_name;

ALTER TABLE courses MODIFY duration INT;

ALTER TABLE courses DROP COLUMN start_date;