-- Query 1: Count the number of enrollments for each course
SELECT course_id, COUNT(*) AS enrollment_count
FROM Enrollment
GROUP BY course_id;

-- Query 2: Calculate the average grade value for each enrollment
SELECT enrollment_id, AVG(grade_value) AS average_grade
FROM Grade
GROUP BY enrollment_id;

-- Query 3: Find the total number of submissions for each course module
SELECT cm.module_id, COUNT(*) AS total_submissions
FROM ModuleContent mc
JOIN CourseModule cm ON mc.module_id = cm.module_id
JOIN Enrollment e ON cm.course_id = e.course_id
JOIN Submission s ON e.enrollment_id = s.enrollment_id
GROUP BY cm.module_id;
