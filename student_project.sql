CREATE DATABASE StudentSystemDB;
USE StudentSystemDB;

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL
);

INSERT INTO courses (course_name, credits) VALUES 
('Introduction to SQL', 4),
('Web Development Fundamentals', 3),
('Data Structures', 4);



CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    course_id INT,
    enrollment_date DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO students (first_name, last_name, email, course_id) VALUES 
('Amit', 'Sharma', 'amit.sharma@email.com', 1),
('Neha', 'Patil', 'neha.patil@email.com', 1),
('Rahul', 'Verma', 'rahul.v@email.com', 2);

SELECT * FROM students;

SELECT * FROM courses;

SELECT 
    students.student_id,
    students.first_name,
    students.last_name,
    courses.course_name,
    courses.credits
FROM students
INNER JOIN courses ON students.course_id = courses.course_id;


