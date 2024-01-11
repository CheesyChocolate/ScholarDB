-- Query 1: Select users ordered by registration date in ascending order
SELECT *
FROM User
ORDER BY registration_date ASC;

-- Query 2: Select courses ordered by end date in descending order
SELECT *
FROM Course
ORDER BY end_date DESC;

-- Query 3: Select enrollments ordered by enrollment date and user ID in ascending order
SELECT *
FROM Enrollment
ORDER BY enrollment_date ASC, user_id ASC;
