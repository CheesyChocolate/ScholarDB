-- unsupported in SQLite
-- Create a stored procedure
-- CREATE PROCEDURE GetUserCount()
-- BEGIN
--     SELECT COUNT(*) AS user_count FROM User;
-- END;
--
-- Call the stored procedure
-- CALL GetUserCount();


-- Create a temporary view
CREATE TEMPORARY VIEW UserSummary AS
SELECT COUNT(*) AS user_count FROM User;

-- Query the temporary view
SELECT * FROM UserSummary;
