USE day2;
-- TASK6
CREATE TABLE customers(
customer_ID INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30) NOT NULL,
email VARCHAR(30) UNIQUE,
city VARCHAR(30) DEFAULT 'Madurai',
age INT,
registration_date DATE DEFAULT (CURRENT_DATE)
);

INSERT INTO customers (name,email,age) VALUES
("Arun","arun01@gmail.com",24),
("Priya","priya02@gmail.com",25),
("Gokul","gokul03@gmail.com",22),
("Meena","meena04@gmail.com",26),
("Vijay","vijay05@gmail.com",23),
("Nila","nila06@gmail.com",21),
("Karthik","karthik07@gmail.com",27),
("Divya","divya08@gmail.com",24),
("Mohan","mohan09@gmail.com",22),
("Harini","harini10@gmail.com",25);

INSERT INTO customers (name,email,age) VALUES
("Sanjay","sanjay11@gmail.com",28),
("Keerthana","keerthana12@gmail.com",23);

INSERT INTO customers (name,age) VALUES
("Rithik",26);


CREATE TABLE staff (
staff_ID INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30) NOT NULL,
department VARCHAR(30),
salary INT,
city VARCHAR(30)
);

INSERT INTO staff(name,department,salary,city) VALUES
("Hari","IT",28000,"Madurai"),
("Priya","HR",62000,"Chennai"),
("Gokul","IT",27000,"Salem"),
("Meena","IT",47000,"Coimbatore"),
("Vijay","HR",68000,"Trichy"),
("Nila","IT",33000,"Chennai"),
("Karthik","IT",37000,"Madurai"),
("Divya","HR",48000,"Kanchipuram");

UPDATE staff SET salary = 43000 WHERE staff_ID = 3;

UPDATE staff SET department = "IT" WHERE staff_ID = 5;

SELECT * FROM staff WHERE department = "HR";

UPDATE staff SET salary = salary + 4000 WHERE department = "HR";

SET SQL_SAFE_UPDATES = 1;

UPDATE staff SET city = "Coimbatore" WHERE salary > 40000;


CREATE TABLE orders(
order_ID INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(30) NOT NULL,
product_name VARCHAR(30) NOT NULL,
quantity INT,
price DECIMAL(10,2),
order_date DATE DEFAULT (CURRENT_DATE)
);

INSERT INTO orders(customer_name,product_name,quantity,price,order_date) VALUES
("Arun","Mechanical Keyboard",2,1800.00,"2026-01-08"),
("Priya","Wireless Mouse",3,650.00,"2026-01-15"),
("Gokul","LED Monitor",2,9200.00,"2026-02-05"),
("Meena","Bluetooth Headset",5,2400.00,"2026-02-20"),
("Vijay","USB Hub",4,350.00,"2026-03-09"),
("Nila","Laptop Stand",1,1100.00,"2026-03-23"),
("Karthik","Webcam",6,3600.00,"2026-04-04"),
("Arun","External SSD",10,5200.00,"2026-04-17"),
("Priya","WiFi Router",2,3100.00,"2026-05-11"),
("Divya","Power Adapter",3,1400.00,"2026-05-27");

DELETE FROM orders WHERE order_ID = 4;

DELETE FROM orders WHERE quantity < 2;

DELETE FROM orders WHERE price < 500 AND quantity < 5;

SELECT * FROM orders;