-- Query 1: Select users who are either teachers or have a grade greater than 90
SELECT *
FROM User
JOIN UserRole ON User.user_id = UserRole.user_id
JOIN Role ON UserRole.role_id = Role.role_id
LEFT JOIN Grade ON User.user_id = Grade.enrollment_id  -- Assuming Grade has an enrollment_id column
WHERE Role.role_name = 'Teacher' OR (Grade.grade_value > 90 AND Grade.grade_value IS NOT NULL);
