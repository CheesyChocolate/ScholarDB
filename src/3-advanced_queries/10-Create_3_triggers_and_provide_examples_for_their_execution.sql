-- does not work in SQLite

-- Trigger 1: After INSERT
CREATE TRIGGER AfterUserInsert
AFTER INSERT ON User
FOR EACH ROW
BEGIN
    INSERT INTO UserAuditLog (action, user_id, timestamp)
    VALUES ('INSERT', NEW.user_id, CURRENT_TIMESTAMP);
END;

-- Trigger 2: After UPDATE
CREATE TRIGGER AfterUserUpdate
AFTER UPDATE ON User
FOR EACH ROW
BEGIN
    INSERT INTO UserAuditLog (action, user_id, timestamp)
    VALUES ('UPDATE', NEW.user_id, CURRENT_TIMESTAMP);
END;

-- Trigger 3: After DELETE
CREATE TRIGGER AfterUserDelete
AFTER DELETE ON User
FOR EACH ROW
BEGIN
    INSERT INTO UserAuditLog (action, user_id, timestamp)
    VALUES ('DELETE', OLD.user_id, CURRENT_TIMESTAMP);
END;

-- Example 1: Insert a new user
INSERT INTO User (user_id, username, password, email, registration_date, last_login_date)
VALUES (3, 'new_user', 'new_password', 'new_user@example.com', '2023-01-15', '2023-01-20');

-- Example 2: Update an existing user
UPDATE User SET last_login_date = '2023-02-01' WHERE user_id = 2;

-- Example 3: Delete a user
DELETE FROM User WHERE user_id = 1;
