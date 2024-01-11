-- Query 1: Select users who registered between two specific dates using BETWEEN
SELECT *
FROM User
WHERE registration_date BETWEEN '2023-01-01' AND '2023-02-01';

-- Query 2: Select courses with no enrollments using IS NULL
SELECT *
FROM Course
WHERE course_id NOT IN (SELECT DISTINCT course_id FROM Enrollment);

-- Query 3: Select submissions with comments containing 'good' or 'excellent' using LIKE
SELECT *
FROM Submission
WHERE submitted_content LIKE '%good%' OR submitted_content LIKE '%excellent%';
