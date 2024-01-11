-- Query 1: Select users with registration dates after a specific date
SELECT *
FROM User
WHERE registration_date > '2023-03-01';

-- Query 2: Select courses with end dates before a specific date
SELECT *
FROM Course
WHERE end_date < '2023-05-01';

-- Query 3: Select submissions with submission dates between two specific dates
SELECT *
FROM Submission
WHERE submission_date BETWEEN '2023-04-01' AND '2023-04-30';
