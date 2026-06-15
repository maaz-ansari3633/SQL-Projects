CREATE DATABASE StudentDb;

USE StudentDb;
CREATE TABLE Student(
  id INT PRIMARY KEY,
  name VARCHAR (50),
  Age INT,
  Course VARCHAR(50),
  Marks INT
);

INSERT INTO Student VALUES
(1,"Maaz",23,"Computer",85),
(2,"Abdullah",24,"IT",90),
(3,"Yasir",25,"Computer",88),
(4,"Umar",26,"IT",90),
(5,"Avesh",23,"BSC IT",75);

SELECT * FROM Student;

SELECT * FROM Student
ORDER BY Marks DESC
LIMIT 1;

SELECT AVG(Marks) AS AverageMarks
From Student;

SELECT course,AVG(Marks)
FROM Student 
GROUP BY Course;