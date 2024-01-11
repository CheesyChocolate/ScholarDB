-- Query 1: Count the total number of enrollments for each course
SELECT course_id, COUNT(*) AS total_enrollments
FROM Enrollment
GROUP BY course_id;

-- Query 2: Find the course with the highest average grade value
SELECT course_id, course_name, MAX(average_grade) AS highest_average_grade
FROM (
    SELECT c.course_id, c.course_name, AVG(g.grade_value) AS average_grade
    FROM Course c
    LEFT JOIN CourseModule cm ON c.course_id = cm.course_id
    LEFT JOIN ModuleContent mc ON cm.module_id = mc.module_id
    LEFT JOIN Enrollment e ON c.course_id = e.course_id
    LEFT JOIN Grade g ON e.enrollment_id = g.enrollment_id
    GROUP BY c.course_id
)
GROUP BY course_id, course_name
ORDER BY highest_average_grade DESC
LIMIT 1;

-- Query 3: Calculate the total number of submissions and the average length of submitted content
SELECT
    COUNT(*) AS total_submissions,
    AVG(LENGTH(submitted_content)) AS average_content_length
FROM Submission;
