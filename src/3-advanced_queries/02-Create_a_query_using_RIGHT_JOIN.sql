-- Query: Retrieve all enrollments and their corresponding users (if any)
SELECT e.enrollment_id, e.user_id, u.username
FROM Enrollment e
RIGHT JOIN User u ON e.user_id = u.user_id;
