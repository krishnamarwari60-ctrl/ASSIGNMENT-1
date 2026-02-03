Drop Database studentmanagement;
CREATE DATABASE StudentManagement;
USE StudentManagement;
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(1),
    Age INT,
    Grade VARCHAR(10),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

INSERT INTO Students (StudentID, Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) 
VALUES
(1, 'Ritu', 'F', 19, 'A', 92, 95, 90),
(2, 'Ram', 'M', 20, 'A', 90, 93, 88),
(3, 'Keshav', 'M', 18, 'B', 85, 87, 82),
(4, 'Radhika', 'F', 21,  'A', 96, 94, 91),
(5, 'Raju', 'M', 19, 'B', 88, 84, 86),
(6, 'Himanshi', 'F', 20,  'A', 95, 97, 93),
(7, 'Jyoti', 'F', 18,  'B', 86, 89, 84),
(8, 'Arpit', 'M', 21,  'C', 80, 82, 78),
(9, 'Nitika', 'F', 17, 'B', 84, 86, 88),
(10, 'Rohit', 'M', 22, 'C', 82, 80, 79);


Select * From Students;


Select Avg(MathScore) AS Average_Math ,
Avg(ScienceScore) AS Average_Science,
Avg(EnglishScore) AS Average_English From Students;


SELECT Name,
    (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
WHERE (MathScore + ScienceScore + EnglishScore) = (
    SELECT MAX(MathScore + ScienceScore + EnglishScore)
    FROM Students
);


Select Grade, Count(*) AS Total_Students From Students
group by Grade;

SELECT Gender,  AVG(MathScore + ScienceScore + EnglishScore) AS Average_Score
FROM Students
group by Gender;

SELECT StudentID, Name, MathScore
FROM Students
WHERE MathScore > 80;

update students Set Grade = 'A'
Where StudentId = 5;



