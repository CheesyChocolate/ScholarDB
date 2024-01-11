-- Query 1: Select usernames and their lengths from the User table
SELECT username, LENGTH(username) AS username_length
FROM User;

-- Query 2: Select courses with names in uppercase from the Course table
SELECT course_name, UPPER(course_name) AS uppercase_course_name
FROM Course;

-- Query 3: Select users with emails ending in '.com' from the User table
SELECT *
FROM User
WHERE LOWER(email) LIKE '%.com';
