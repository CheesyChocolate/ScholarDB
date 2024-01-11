-- Query 1: Select the average grade value for each enrollment from the Grade table
SELECT enrollment_id, AVG(grade_value) AS average_grade
FROM Grade
GROUP BY enrollment_id;

-- Query 2: Select courses with the total number of enrolled users from the Enrollment table
SELECT course_id, COUNT(DISTINCT user_id) AS total_enrolled_users
FROM Enrollment
GROUP BY course_id;

-- Query 3: Select users with a calculated age from the UserProfile table
SELECT user_id, strftime('%Y', 'now') - strftime('%Y', date_of_birth) AS user_age
FROM UserProfile;
