-- Sample data for the User table
INSERT INTO User VALUES (3, 'alex_smith', 'pass789', 'alex@example.com', '2023-03-20', '2023-04-05');
INSERT INTO User VALUES (4, 'sarah_jones', 'sarahpass', 'sarah@example.com', '2023-04-10', '2023-04-20');

-- Sample data for the UserProfile table
INSERT INTO UserProfile VALUES (3, 3, 'Alex Smith', '1985-08-12', 'Male', 'UK');
INSERT INTO UserProfile VALUES (4, 4, 'Sarah Jones', '1992-01-25', 'Female', 'Australia');

-- Sample data for the UserRole table
INSERT INTO UserRole VALUES (3, 3, 1);
INSERT INTO UserRole VALUES (4, 4, 1);

-- Sample data for the Role table
INSERT INTO Role VALUES (3, 'Student', 'Role for students');
INSERT INTO Role VALUES (4, 'Student', 'Role for students');

-- Sample data for the Course table
INSERT INTO Course VALUES (3, 'Machine Learning Basics', 'Introduction to ML concepts', '2023-07-01', '2023-08-30', 'ml123');
INSERT INTO Course VALUES (4, 'Web Development Fundamentals', 'Basics of web development', '2023-09-01', '2023-10-31', 'web456');

-- Sample data for the CourseModule table
INSERT INTO CourseModule VALUES (3, 3, 'Introduction to ML Algorithms', 'Lesson', 'Overview of machine learning algorithms');
INSERT INTO CourseModule VALUES (4, 4, 'HTML Basics', 'Lesson', 'Introduction to HTML');

-- Sample data for the ModuleContent table
INSERT INTO ModuleContent VALUES (3, 3, 'Text', 'This module covers different ML algorithms.');
INSERT INTO ModuleContent VALUES (4, 4, 'Text', 'This module covers basic HTML tags.');

-- Sample data for the Enrollment table
INSERT INTO Enrollment VALUES (3, 3, 3, '2023-07-05', 'Enrolled');
INSERT INTO Enrollment VALUES (4, 4, 4, '2023-09-10', 'Enrolled');

-- Sample data for the Grade table
INSERT INTO Grade VALUES (3, 3, 88, 'Nice work!');
INSERT INTO Grade VALUES (4, 4, 92, 'Great job!');

-- Sample data for the Submission table
INSERT INTO Submission VALUES (3, 3, '2023-08-15', 'Submitted ML project.');
INSERT INTO Submission VALUES (4, 4, '2023-10-20', 'Submitted web development assignment.');

-- Sample data for the UserCourseEnrollment table
INSERT INTO UserCourseEnrollment VALUES (3, 3, '2023-07-05');
INSERT INTO UserCourseEnrollment VALUES (4, 4, '2023-09-10');
