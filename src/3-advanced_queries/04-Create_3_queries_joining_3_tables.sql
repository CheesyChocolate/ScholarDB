-- Query 1: Retrieve information about users, their enrollments, and associated courses
SELECT u.user_id, u.username, e.enrollment_id, e.course_id, c.course_name
FROM User u
JOIN Enrollment e ON u.user_id = e.user_id
JOIN Course c ON e.course_id = c.course_id;

-- Query 2: Find users, their roles, and the corresponding role names
SELECT u.user_id, u.username, ur.role_id, r.role_name
FROM User u
JOIN UserRole ur ON u.user_id = ur.user_id
JOIN Role r ON ur.role_id = r.role_id;

-- Query 3: Get course details, associated modules, and the module contents
SELECT c.course_id, c.course_name, m.module_id, m.module_name, mc.content_type
FROM Course c
JOIN CourseModule m ON c.course_id = m.course_id
JOIN ModuleContent mc ON m.module_id = mc.module_id;
