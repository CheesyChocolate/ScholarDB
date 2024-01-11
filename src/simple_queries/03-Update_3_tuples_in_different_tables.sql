-- Update a tuple in the User table
UPDATE User
SET password = 'new_pass'
WHERE user_id = 4;

-- Update a tuple in the Course table
UPDATE Course
SET description = 'Updated description'
WHERE course_id = 1;

-- Update a tuple in the Grade table
UPDATE Grade
SET grade_value = 95
WHERE grade_id = 1;
