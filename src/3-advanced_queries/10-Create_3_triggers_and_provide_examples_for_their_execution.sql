-- UserAuitLog table
CREATE TABLE UserAuditLog (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    action VARCHAR(10),
    user_id INT,  -- No foreign key constraint is added here
    timestamp DATETIME
);

DELIMITER //
-- Trigger 1: After INSERT
CREATE TRIGGER AfterUserInsert
AFTER INSERT ON User
FOR EACH ROW
BEGIN
    INSERT INTO UserAuditLog (action, user_id, timestamp)
    VALUES ('INSERT', NEW.user_id, CURRENT_TIMESTAMP);
END //
DELIMITER ;

DELIMITER //
-- Trigger 2: After UPDATE
CREATE TRIGGER AfterUserUpdate
AFTER UPDATE ON User
FOR EACH ROW
BEGIN
    INSERT INTO UserAuditLog (action, user_id, timestamp)
    VALUES ('UPDATE', NEW.user_id, CURRENT_TIMESTAMP);
END //
DELIMITER ;

DELIMITER //
-- Trigger 3: After DELETE
CREATE TRIGGER AfterUserDelete
AFTER DELETE ON User
FOR EACH ROW
BEGIN
    INSERT INTO UserAuditLog (action, user_id, timestamp)
    VALUES ('DELETE', OLD.user_id, CURRENT_TIMESTAMP);
END //
DELIMITER ;


-- Example 1: Insert a new user
INSERT INTO User (user_id, username, password, email, registration_date, last_login_date)
VALUES (29, 'JustForFun2', 'verystrongpassword2', 'myemail2@youremail.com', '2023-01-16', '2023-01-21');

-- Example 2: Update an existing user
UPDATE User SET last_login_date = '2023-02-01' WHERE user_id = 29;

-- Example 3: Delete a user
DELETE FROM User WHERE user_id = 29;

-- Query the AuditLog
select * FROM UserAuditLog;

-- To remove the Triggers
DROP TRIGGER AfterUserInsert;
DROP TRIGGER AfterUserUpdate;
DROP TRIGGER AfterUserDelete;

-- Drop the UserAuditLog
DROP TABLE UserAuditLog
