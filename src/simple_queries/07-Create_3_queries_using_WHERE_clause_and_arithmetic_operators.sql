-- Query 1: Select users with a specific age (assuming birthdate is stored in UserProfile)
SELECT *
FROM User
JOIN UserProfile ON User.user_id = UserProfile.user_id
WHERE strftime('%Y', 'now') - strftime('%Y', UserProfile.date_of_birth) = 30;

-- Query 2: Select courses with a duration less than a specific number of days
SELECT *
FROM Course
WHERE (julianday(end_date) - julianday(start_date)) < 60;

-- Query 3: Select enrollments with grades greater than a specific value
SELECT *
FROM Enrollment
JOIN Grade ON Enrollment.enrollment_id = Grade.enrollment_id
WHERE Grade.grade_value > 80;
