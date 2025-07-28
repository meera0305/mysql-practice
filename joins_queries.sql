CREATE TABLE courses (
  course_id INT AUTO_INCREMENT PRIMARY KEY,
  course_name VARCHAR(100)
);

INSERT INTO courses (course_name) VALUES ('Java'), ('Python'), ('MySQL');
SELECT s.name, c.course_name 
FROM students s 
JOIN courses c ON s.course = c.course_name;
