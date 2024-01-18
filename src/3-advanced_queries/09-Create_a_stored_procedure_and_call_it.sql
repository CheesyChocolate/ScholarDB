-- For MySQL
-- Create a stored procedure
DELIMITER //
CREATE PROCEDURE GetUserCount()
BEGIN
     SELECT COUNT(*) AS user_count FROM User;
END //

-- Call the stored procedure
CALL GetUserCount();

-- For SQLite
-- -- Create a temporary view
-- CREATE TEMPORARY VIEW UserSummary AS
-- SELECT COUNT(*) AS user_count FROM User;

-- Query the temporary view
-- SELECT * FROM UserSummary;
