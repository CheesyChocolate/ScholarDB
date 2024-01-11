-- Query 1: Count the number of enrollments for each course
SELECT course_id, COUNT(*) AS enrollment_count
FROM Enrollment
GROUP BY course_id;

-- Query 2: Find the minimum and maximum grade values for each user
SELECT e.user_id,
       MIN(g.grade_value) AS min_grade,
       MAX(g.grade_value) AS max_grade
FROM Enrollment e
JOIN Grade g ON e.enrollment_id = g.enrollment_id
GROUP BY e.user_id;

-- Query 3: Calculate the total number of submissions and the average length of submitted content
SELECT
    COUNT(*) AS total_submissions,
    AVG(LENGTH(submitted_content)) AS average_content_length
FROM Submission;
