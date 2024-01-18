-- Query 0: Select users who are either teachers or have a grade greater than 90
SELECT *
FROM User
JOIN UserRole ON User.user_id = UserRole.user_id
JOIN Role ON UserRole.role_id = Role.role_id
LEFT JOIN Grade ON User.user_id = Grade.enrollment_id  -- Assuming Grade has an enrollment_id column
WHERE Role.role_name = 'Teacher' OR (Grade.grade_value > 90 AND Grade.grade_value IS NOT NULL);

-- Query 1: Users who registered after 2023-01-01 and last logged in before 2023-06-01
SELECT *
FROM User
WHERE registration_date > '2023-01-01' AND last_login_date < '2023-06-01';

-- Query 2: Courses that start between 2023-01-01 and 2023-06-01 and end between 2023-12-01 and 2024-06-01
SELECT *
FROM Course
WHERE start_date BETWEEN '1998-01-01' AND '2023-06-01'
AND end_date BETWEEN '2000-12-01' AND '2024-06-01';

-- Query 3: UserProfiles for users from 'USA' and are 'Female'
SELECT *
FROM UserProfile
WHERE country = 'USA' AND gender = 'Female';
