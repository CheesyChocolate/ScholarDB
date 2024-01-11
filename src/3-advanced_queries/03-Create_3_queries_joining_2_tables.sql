-- Query 1: Retrieve information about users and their enrollments
SELECT u.user_id, u.username, e.enrollment_id, e.course_id
FROM User u
JOIN Enrollment e ON u.user_id = e.user_id;

-- Query 2: Find users and their corresponding roles
SELECT u.user_id, u.username, r.role_name
FROM User u
JOIN UserRole ur ON u.user_id = ur.user_id
JOIN Role r ON ur.role_id = r.role_id;

-- Query 3: Get course details along with the associated modules
SELECT c.course_id, c.course_name, m.module_id, m.module_name
FROM Course c
JOIN CourseModule m ON c.course_id = m.course_id;
