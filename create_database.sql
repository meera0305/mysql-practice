CREATE DATABASE IF NOT EXISTS my_practice_db;
USE my_practice_db;
   
CREATE TABLE students (   
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  age INT,
  course VARCHAR(100)      
); 
