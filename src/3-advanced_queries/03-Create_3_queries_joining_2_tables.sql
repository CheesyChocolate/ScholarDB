-- Query 1: Retrieve information about users and their enrollments
SELECT u.user_id, u.username, e.enrollment_id, e.course_id
FROM User u
JOIN Enrollment e ON u.user_id = e.user_id;

-- Query 2: Combining relevant data from both tables.
SELECT 
    u.user_id, 
    u.username, 
    u.email, 
    u.registration_date, 
    u.last_login_date, 
    up.full_name, 
    up.date_of_birth, 
    up.gender, 
    up.country
FROM User u
JOIN UserProfile up ON u.user_id = up.user_id;


-- Query 3: Get course details along with the associated modules
SELECT c.course_id, c.course_name, m.module_id, m.module_name
FROM Course c
JOIN CourseModule m ON c.course_id = m.course_id;
