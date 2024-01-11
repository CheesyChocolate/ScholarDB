-- does not work

-- Add a CHECK constraint to the Grade table
ALTER TABLE Grade
ADD CONSTRAINT check_grade_value
CHECK (grade_value >= 0 AND grade_value <= 100);
