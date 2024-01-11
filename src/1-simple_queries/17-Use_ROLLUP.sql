-- No ROLLUP in SQLite
-- Query: Calculate total enrollment count by course and user with ROLLUP
-- SELECT course_id, user_id, COUNT(*) AS enrollment_count
-- FROM Enrollment
-- GROUP BY ROLLUP(course_id, user_id);

-- Query: Calculate total enrollment count by course and user with simulated ROLLUP
SELECT course_id, user_id, COUNT(*) AS enrollment_count
FROM Enrollment
GROUP BY course_id, user_id

UNION

SELECT course_id, NULL AS user_id, COUNT(*) AS enrollment_count
FROM Enrollment
GROUP BY course_id

UNION

SELECT NULL AS course_id, NULL AS user_id, COUNT(*) AS enrollment_count
FROM Enrollment;
