DROP DATABASE lab7;
CREATE DATABASE lab7;
USE lab7; 


CREATE TABLE branch(
    branch_name varchar(50),
    branch_city varchar(50),
    assets int(20)
    
);   

CREATE TABLE CUSTOMER(
    customer_id int(50) PRIMARY KEY,
    customer_name varchar(50),
    customer_city varchar(50)
    
);    


CREATE TABLE account(
    account_no int(50) PRIMARY KEY,
    branch_name varchar(50),
    balance int(50)    
);   


CREATE TABLE borrower(
    customer_name varchar(255),
    loan_no int (50)  
);


CREATE TABLE loan(
    loan_no int(50) PRIMARY KEY,
    branch_name varchar(50),
    amount int(50)    
);

CREATE TABLE depositor(
    customer_name varchar(50) ,
    account_no int(50),
    FOREIGN KEY (account_no) REFERENCES account(account_no)
);


INSERT INTO branch(branch_name, branch_city, assets)
VALUES('mirpur', 'dhaka', 10000000),
     ('malibagh', 'dhaka', 20000000),
     ('dhanmondi', 'dhaka', 30000000),
     ('comilla', 'comilla', 20000000),
     ('sreemangal', 'sylhet', 1000000),
     ('jatrabari', 'dhaka', 20000000),
     ('uttara', 'dhaka', 34000000),
     ('debidwar', 'comilla', 2000000),
     ('jp sadar', 'jamalpur', 2000000),
     ('kasba', 'brahmanbaria', 1000000); 

INSERT INTO customer(customer_id, customer_name, customer_city)
VALUES(1, 'samiul', 'dhaka'),
     (2, 'sakib', 'dhaka'),
     (3, 'abrar', 'dhaka'),
     (4, 'tanvir', 'brahmanbaria'),
     (5, 'Sajjad', 'dhaka'),
     (6, 'rakib', 'dhaka'),
     (7, 'mehadi', 'dhaka'),
     (8, 'hasan', 'brahmanbaria'),
     (9, 'sabbir', 'dhaka'),
     (10, 'shawon', 'comilla');

INSERT INTO account(account_no, branch_name, balance)
VALUES(100, 'malibagh', 30000),
     (200, 'nabinagar',40000),
     (300, 'dhanmondi', 20000),
     (400, 'nabinagar', 50000),
     (500, 'malibagh', 30000),
     (600, 'nabinagar',40000),
     (700, 'dhanmondi', 20000),
     (800, 'nabinagar', 50000),
     (900, 'nabinagar', 50000),
     (1000, 'mirpur', 200000);

INSERT INTO loan(loan_no, branch_name, amount)
VALUES(10, 'malibagh', 3000),
     (20, 'nabinagar',4000),
     (30, 'dhanmondi', 2000),
     (40, 'nabinagar', 5000),
     (50, 'mirpur', 2000),
     (60, 'malibagh', 3000),
     (70, 'nabinagar',4000),
     (80, 'dhanmondi', 2000),
     (90, 'nabinagar', 5000),
     (100, 'mirpur', 2000);

INSERT INTO depositor(customer_name, account_no)
VALUES('samiul', 400),
     ( 'tanvir',500),
     ( 'abrar', 200),
     ( 'sakib', 300),
     ( 'sajjad', 100),
     ('hasan', 400),
     ( 'arman',500),
     ( 'rakib', 200),
     ( 'shihab', 300),
     ( 'shawon', 100);

INSERT INTO borrower(customer_name, loan_no)
VALUES('samiul', 400),
     ( 'hasan',500),
     ( 'tanvir', 200),
     ( 'sakib', 300),
     ( 'sajjad', 100),
     ('shawon', 400),
     ( 'arman',500),
     ( 'abrar', 200),
     ( 'shihab', 300),
     ( 'mehadi', 100);


SELECT * FROM branch
ORDER BY assets ASC;

SELECT * FROM account
ORDER BY account_no DESC; 

SELECT * FROM customer WHERE customer_city='dhaka';     

SELECT loan_no,branch_name  FROM loan 
     WHERE amount BETWEEN 2000 AND 6000;

SELECT branch_name, branch_city FROM branch WHERE assets BETWEEN  1000000 AND 3000000 ;

SELECT customer_name  FROM customer WHERE customer_name LIKE 'a%';

SELECT customer_name FROM customer WHERE customer_name LIKE '%n';

SELECT customer_name, customer_id FROM customer WHERE customer_name LIKE  '%m%' ;

SELECT customer_name, customer_id FROM customer WHERE customer_name LIKE  '%m%' OR  customer_name LIKE 's%' ;

SELECT customer_name, customer_id FROM customer WHERE customer_name LIKE  '%m%' AND  customer_name LIKE 's%' ;

SELECT customer_name, customer_id FROM customer LIMIT 7;

SELECT customer_name, customer_id FROM customer LIMIT 3,9;

