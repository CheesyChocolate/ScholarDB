-- Query 1: Retrieve user information along with the total number of enrollments
SELECT user_id, username,
       (SELECT COUNT(*) FROM Enrollment WHERE User.user_id = Enrollment.user_id) AS total_enrollments
FROM User;

-- Query 2: Get course details and the average grade value for each course
SELECT c.course_id, c.course_name,
       (SELECT AVG(g.grade_value) FROM Grade g
        JOIN Enrollment e ON g.enrollment_id = e.enrollment_id
        WHERE e.course_id = c.course_id) AS average_grade
FROM Course c;

-- Query 3: Find user information and the latest submission date for each user
SELECT u.user_id, u.username,
       (SELECT MAX(s.submission_date)
        FROM Submission s
        JOIN Enrollment e ON e.enrollment_id = s.enrollment_id
        WHERE u.user_id = e.user_id) AS latest_submission_date
FROM User u
LEFT JOIN Enrollment e ON u.user_id = e.user_id;
