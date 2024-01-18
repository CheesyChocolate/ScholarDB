-- No ROLLUP in SQLite, HOWEVER, we have MySQL!!!!
-- Query: Calculate total enrollment count by course and user with ROLLUP
SELECT course_id, user_id, COUNT(*) AS enrollment_count
FROM Enrollment
GROUP BY course_id, user_id WITH ROLLUP;

-- FOR THE SQLite PEASANTS!
-- -- Query: Calculate total enrollment count by course and user with simulated ROLLUP
-- SELECT course_id, user_id, COUNT(*) AS enrollment_count
-- FROM Enrollment
-- GROUP BY course_id, user_id

-- UNION

-- SELECT course_id, NULL AS user_id, COUNT(*) AS enrollment_count
-- FROM Enrollment
-- GROUP BY course_id

-- UNION

-- SELECT NULL AS course_id, NULL AS user_id, COUNT(*) AS enrollment_count
-- FROM Enrollment;
