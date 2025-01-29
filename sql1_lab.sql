-- SQL Exercises (With Answers)

-- 1. Retrieve all students who enrolled in 2023.
SELECT * FROM students
WHERE enrollmentdate LIKE "%2023%";

-- 2. Find students whose email contains 'gmail.com'.
SELECT * FROM students
WHERE email like "%gmail.com%";

-- 3. Count how many students are enrolled in the database.
SELECT count(*) from students;

-- 4. Find students born between 2000 and 2005.
SELECT * FROM students
WHERE year(DateOfBirth) between 2000 and 2005; 

-- 5. List students sorted by last name in descending order.
SELECT * FROM students
ORDER BY LastName DESC;

-- 6. Find the names of students and the courses they are enrolled in.
SELECT Students.StudentID, Students.FirstName, Students.LastName, Courses.CourseName
FROM Students
INNER JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
INNER JOIN Courses ON Enrollments.CourseID = Courses.CourseID;

-- 7. List all students and their courses, ensuring students without courses are included (LEFT JOIN).
SELECT Students.StudentID, Students.FirstName, Students.LastName, Courses.CourseName
FROM Students
LEFT JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
LEFT JOIN Courses ON Enrollments.CourseID = Courses.CourseID;

-- 8. Find all courses with no students enrolled (LEFT JOIN).
SELECT Courses.CourseID, Courses.CourseName
FROM Courses
LEFT JOIN Enrollments ON Courses.CourseID = Enrollments.CourseID
WHERE Enrollments.StudentID IS NULL;




-- 10. List courses and show the number of students enrolled in each course.
SELECT Courses.CourseID, Courses.CourseName, COUNT(Enrollments.StudentID) AS TotalStudents
FROM Courses
LEFT JOIN Enrollments ON Courses.CourseID = Enrollments.CourseID
GROUP BY Courses.CourseID, Courses.CourseName;



