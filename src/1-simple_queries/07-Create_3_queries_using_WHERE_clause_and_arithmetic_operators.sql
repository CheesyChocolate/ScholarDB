-- Query 1: Select users with registration dates within the last 90 days
SELECT *
FROM User
WHERE DATEDIFF(CURRENT_DATE(), registration_date) <= 90;

-- Query 2: Select courses with module counts greater than or equal to 5
SELECT c.course_id, c.course_name, COUNT(cm.module_id) AS total_modules
FROM Course c
LEFT JOIN CourseModule cm ON c.course_id = cm.course_id
GROUP BY c.course_id, c.course_name
HAVING total_modules >= 5;

-- Query 3: Select enrollments with grades greater than the course's passing grade
SELECT e.enrollment_id, e.user_id, e.course_id, g.grade_value
FROM Enrollment e
LEFT JOIN Grade g ON e.enrollment_id = g.enrollment_id
JOIN Course c ON e.course_id = c.course_id
WHERE g.grade_value > (50 + 10); -- Select enrollments with grades greater than passing grade(50) + 10
