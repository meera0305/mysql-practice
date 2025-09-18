-- 🔸 1. Create Database and Use it
CREATE DATABASE IF NOT EXISTS my_practice_db;
USE my_practice_db;

-- 🔸 2. Create Tables   
CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,  
  name VARCHAR(100),
  age INT,
  course VARCHAR(100)
);
   
CREATE TABLE courses (
  course_id INT AUTO_INCREMENT PRIMARY KEY,
  course_name VARCHAR(100)
);

-- 🔸 3. Insert Sample Data
INSERT INTO students (name, age, course) VALUES 
('Meera', 21, 'Java'),
('Amit', 22, 'Python'),
('Riya', 20, 'MySQL');

INSERT INTO courses (course_name) VALUES 
('Java'), ('Python'), ('MySQL');

-- 🔸 4. Select Queries
SELECT * FROM students;
SELECT * FROM courses;

-- 🔸 5. Join Query
SELECT s.name, s.course, c.course_name 
FROM students s
JOIN courses c ON s.course = c.course_name;

-- 🔸 6. Group By Example
SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course;

-- 🔸 7. Subquery Example
SELECT * FROM students 
WHERE age > (SELECT AVG(age) FROM students);

-- 🔸 8. Create View
CREATE VIEW student_info AS
SELECT name, course FROM students;

SELECT * FROM student_info;

-- 🔸 9. Stored Procedure
DELIMITER $$

CREATE PROCEDURE GetAllStudents()
BEGIN 
  SELECT * FROM students;
END$$

DELIMITER ;

-- Call the procedure
CALL GetAllStudents();
