-- Query 1: Find users enrolled in a specific course
SELECT user_id, username
FROM User
WHERE user_id IN (SELECT user_id FROM Enrollment WHERE course_id = 1);

-- Query 2: Get courses with more than two modules
SELECT course_id, course_name
FROM Course
WHERE course_id IN (SELECT course_id FROM CourseModule GROUP BY course_id HAVING COUNT(*) < 2);

-- Query 3: Retrieve enrollments of users with a certain role
SELECT enrollment_id, user_id, course_id
FROM Enrollment
WHERE user_id IN (SELECT user_id FROM UserRole WHERE role_id = 1);
