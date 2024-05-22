DROP DATABASE lab08;
CREATE DATABASE lab08;
USE lab08;

CREATE TABLE customer(
    custId int (10),
    custname varchar(255),
    city varchar(255),
    grade int(10) NOT null,
    salesid int(10),
    PRIMARY KEY (custid)    
    );

INSERT INTO customer ( custid , custname, city, grade, salesid)
VALUES (1, 'mikiel', 'newyork', 100,  111),
        (2, 'pep', 'paris', 200, 222),
        (3, 'jurgen', 'rome', 300, 333),
        (4, 'klop', 'pisa', 200,  444),
        (5, 'green', 'california', 100,  555),
        (6, 'jozy', 'london',500,  666),
        (7, 'brad', 'london', 300,  777);

SELECT * FROM customer;

CREATE TABLE salesman(
    salesid int (10),
    salesname varchar(255),
    city varchar(255),
    comission float,  
    PRIMARY KEY (salesid)
    );
    
INSERT INTO salesman ( salesid , salesname, city, comission)
VALUES (111, 'mikel', 'newyork', 0.15),
        (222, 'pepp', 'paris', 0.13),
        (333, 'jurgenn', 'rome', 0.11),
        (444, 'klopp', 'pisa', 0.12),
        (555, 'grreen', 'california', 0.10),
        (666, 'braad', 'london', 0.16);
        
SELECT * FROM salesman;

CREATE TABLE orders (
    ordnm int (10),
    perchsam float,
    orddate date ,
    custid int(255),
    salesid int(10),
    PRIMARY KEY (ordnm)
    
    );
    
     INSERT INTO orders(ordnm ,perchsam,orddate,custid,salesid)
     VALUES(30, 120.2 , '2019-03-21', 1,  9875643),
        (31, 130,   '2019-03-22', 2, 111),
        (32, 134.4, '2019-03-2',  3, 111),
        (33, 160, '2019-03-21', 6,  444),
        (34,453,  '2019-03-21', 1,  666),
        (35, 450,'2019-03-21', 5,  333),
        (36, 120, '2019-03-21' , 3,  222);
        
SELECT * FROM orders;

SELECT orders.ordnm AS 'order no' , orders.orddate as 'order date', orders.perchsam as ' purchase amount', orders.custid as 
'customer id', customer.custname as 'customer name', orders.salesid as 'salesman id', salesman.salesname as ' salesman',
salesman.comission
FROM orders
INNER JOIN customer ON orders.custid = customer.custid
INNER JOIN salesman ON orders.salesid = salesman.salesid;

SELECT customer.custname as 'customer name' , salesman.salesid as 'salesman id' , salesman.salesname as ' salesman' 
FROM customer
left JOIN salesman on customer.salesid= salesman.salesid
ORDER BY customer.custid ASC;

 
