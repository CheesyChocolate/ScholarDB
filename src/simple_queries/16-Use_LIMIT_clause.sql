-- Query 1: Select the first 5 users ordered by registration date
SELECT *
FROM User
ORDER BY registration_date
LIMIT 5;

-- Query 2: Select courses with at most 3 modules
SELECT c.course_id, c.course_name, COUNT(cm.module_id) AS total_modules
FROM Course c
LEFT JOIN CourseModule cm ON c.course_id = cm.course_id
GROUP BY c.course_id, c.course_name
HAVING total_modules <= 3;

-- Query 3: Select the latest 10 submissions
SELECT *
FROM Submission
ORDER BY submission_date DESC
LIMIT 10;
