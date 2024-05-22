DROP DATABASE lab02;
CREATE DATABASE lab02;
USE lab02;
CREATE TABLE Employes( 
    emp_id int (22) not null,
    first_name varchar(255) not null,
    last_name varchar(55) not null,
    DOB date not null,
    gender ENUM('m','f') DEFAULT null,
    salary int(100),
    entry_date datetime DEFAULT CURRENT_TIMESTAMP()
);    



INSERT into employes(
    emp_id, first_name, last_name, DOB, gender, salary)
VALUES (1, 'Sabbir', 'Rahman', '1998-08-02', 'm', 300000),
       (2, 'Sakib', 'Rahman', '1998-08-02', 'm', 200000),
       (3, 'Ananna', 'Rahman', '1998-08-02', 'f', 400000),
       (4, 'Jannat', 'Hasan', '1998-08-02', 'm', 450000),
       (5, 'Sabbir', 'Rahman', '1998-08-02', 'm', 300000);




SELECT DISTINCT first_name, last_name FROM employes;


SELECT emp_id, first_name, last_name, DOB, salary FROM employes WHERE first_name= 'Sabbir';


SELECT emp_id, first_name, last_name FROM employes WHERE salary<>300000;
