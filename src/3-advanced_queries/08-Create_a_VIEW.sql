-- Create a VIEW named UserSummary
CREATE VIEW UserSummary AS
SELECT user_id, username, registration_date
FROM User;

-- View the contents of the UserSummary view
SELECT * FROM UserSummary;
