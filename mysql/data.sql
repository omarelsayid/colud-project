CREATE DATABASE StudentDatabase;
USE StudentDatabase;
CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    cgpa FLOAT CHECK (cgpa <= 4)
);
INSERT INTO Students (id, name, age, cgpa)
VALUES (2202122, 'omar lesayed', 20, 3.7),
    (2202123, 'moahmed alaa', 21, 3.9),
    (2202124, 'Ahmed Mamdouh', 21, 3),
    (220590, 'Amir mohamed', 22, 3);
USE StudentDatabase;
SELECT *
FROM Students;