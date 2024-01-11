-- Query: Retrieve all users and their enrollments (if any)
SELECT u.user_id, u.username, e.enrollment_id, e.course_id
FROM User u
LEFT JOIN Enrollment e ON u.user_id = e.user_id;
