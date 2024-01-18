-- Query 1: Select users who registered in the last 30 days
SELECT *
FROM User
-- WHERE registration_date >= DATE('now', '-30 days'); -- For SQLite
WHERE registration_date >= CURDATE() - INTERVAL 30 DAY; -- For MySQL

-- Query 2: Select courses that have started today
SELECT *
FROM Course
WHERE start_date = DATE('now');

-- Query 3: Select enrollments with a duration longer than 60 days from the enrollment date
SELECT enrollment_id, (julianday('now') - julianday(enrollment_date)) AS enrollment_duration_days
FROM Enrollment
WHERE (julianday('now') - julianday(enrollment_date)) > 60;
