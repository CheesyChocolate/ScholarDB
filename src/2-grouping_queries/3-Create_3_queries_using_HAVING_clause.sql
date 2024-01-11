-- Query 1: Find courses with more than 50 enrollments
SELECT course_id, COUNT(*) AS enrollment_count
FROM Enrollment
GROUP BY course_id
HAVING enrollment_count < 50;

-- Query 2: Find users with an average grade value below 70
SELECT e.user_id, AVG(g.grade_value) AS average_grade
FROM Enrollment e
JOIN Grade g ON e.enrollment_id = g.enrollment_id
GROUP BY e.user_id
HAVING average_grade > 70;

-- Query 3: Find modules with submissions more than 10 characters on average
SELECT cm.module_id, AVG(LENGTH(s.submitted_content)) AS average_content_length
FROM CourseModule cm
JOIN Submission s ON cm.module_id = s.enrollment_id
GROUP BY cm.module_id
HAVING average_content_length > 10;
