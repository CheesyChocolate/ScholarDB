-- Sample data for the User table
INSERT INTO User VALUES (1, 'john_doe', 'password123', 'john@example.com', '2023-01-01', '2023-01-10');
INSERT INTO User VALUES (2, 'jane_smith', 'hello456', 'jane@example.com', '2023-02-15', '2023-02-20');
INSERT INTO User VALUES (3, 'alex_smith', 'pass789', 'alex@example.com', '2023-03-20', '2023-04-05');
INSERT INTO User VALUES (4, 'sarah_jones', 'sarahpass', 'sarah@example.com', '2023-04-10', '2023-04-20');
INSERT INTO User VALUES (5, 'emma_watson', 'emmaw123', 'emma@example.com', '2023-05-10', '2023-05-20');
INSERT INTO User VALUES (6, 'david_smith', 'davidpass', 'david@example.com', '2023-06-15', '2023-06-25');
INSERT INTO User VALUES (7, 'lisa_jackson', 'lisa123', 'lisa@example.com', '2023-07-10', '2023-07-20');
INSERT INTO User VALUES (8, 'michael_brown', 'michaelpass', 'michael@example.com', '2023-08-15', '2023-08-25');
INSERT INTO User VALUES (9, 'kevin_adams', 'kevinpass', 'kevin@example.com', '2023-09-20', '2023-09-30');
INSERT INTO User VALUES (10, 'sophia_wilson', 'sophiapass', 'sophia@example.com', '2023-10-25', '2023-11-05');
INSERT INTO User VALUES (11, 'olivia_johnson', 'olivia123', 'olivia@example.com', '2024-03-01', '2024-03-15');
INSERT INTO User VALUES (12, 'ethan_miller', 'ethanpass', 'ethan@example.com', '2024-04-05', '2024-04-20');
INSERT INTO User VALUES (13, 'grace_carter', 'gracepass', 'grace@example.com', '2024-09-01', '2024-09-15');
INSERT INTO User VALUES (14, 'noah_thompson', 'noahpass', 'noah@example.com', '2024-10-05', '2024-10-20');
INSERT INTO User VALUES (15, 'oliver_wilson', 'oliverpass', 'oliver@example.com', '2025-03-01', '2025-03-15');
INSERT INTO User VALUES (16, 'ava_roberts', 'avapass', 'ava@example.com', '2025-04-05', '2025-04-20');
INSERT INTO User VALUES (17, 'emma_cook', 'emmapass', 'emma@example.com', '2026-09-01', '2026-09-15');
INSERT INTO User VALUES (18, 'liam_harris', 'liampass', 'liam@example.com', '2026-10-05', '2026-10-20');
INSERT INTO User VALUES (19, 'harper_turner', 'harperpass', 'harper@example.com', '2027-03-01', '2027-03-15');
INSERT INTO User VALUES (20, 'mason_adams', 'masonpass', 'mason@example.com', '2027-04-05', '2027-04-20');

-- Sample data for the UserProfile table
INSERT INTO UserProfile VALUES (1, 1, 'John Doe', '1990-05-15', 'Male', 'USA');
INSERT INTO UserProfile VALUES (2, 2, 'Jane Smith', '1988-09-22', 'Female', 'Canada');
INSERT INTO UserProfile VALUES (3, 3, 'Alex Smith', '1985-08-12', 'Male', 'UK');
INSERT INTO UserProfile VALUES (4, 4, 'Sarah Jones', '1992-01-25', 'Female', 'Australia');
INSERT INTO UserProfile VALUES (5, 5, 'Emma Watson', '1989-04-15', 'Female', 'UK');
INSERT INTO UserProfile VALUES (6, 6, 'David Smith', '1995-11-22', 'Male', 'USA');
INSERT INTO UserProfile VALUES (7, 7, 'Lisa Jackson', '1992-09-05', 'Female', 'USA');
INSERT INTO UserProfile VALUES (8, 8, 'Michael Brown', '1985-12-12', 'Male', 'Canada');
INSERT INTO UserProfile VALUES (9, 9, 'Kevin Adams', '1988-06-18', 'Male', 'Australia');
INSERT INTO UserProfile VALUES (10, 10, 'Sophia Wilson', '1993-03-29', 'Female', 'USA');
INSERT INTO UserProfile VALUES (11, 11, 'Olivia Johnson', '1990-12-28', 'Female', 'Canada');
INSERT INTO UserProfile VALUES (12, 12, 'Ethan Miller', '1987-09-18', 'Male', 'USA');
INSERT INTO UserProfile VALUES (13, 13, 'Grace Carter', '1993-06-20', 'Female', 'Australia');
INSERT INTO UserProfile VALUES (14, 14, 'Noah Thompson', '1990-11-10', 'Male', 'USA');
INSERT INTO UserProfile VALUES (15, 15, 'Oliver Wilson', '1995-09-12', 'Male', 'UK');
INSERT INTO UserProfile VALUES (16, 16, 'Ava Roberts', '1992-07-25', 'Female', 'Canada');
INSERT INTO UserProfile VALUES (17, 17, 'Emma Cook', '1996-07-18', 'Female', 'USA');
INSERT INTO UserProfile VALUES (18, 18, 'Liam Harris', '1993-02-12', 'Male', 'Canada');
INSERT INTO UserProfile VALUES (19, 19, 'Harper Turner', '1991-08-24', 'Female', 'Canada');
INSERT INTO UserProfile VALUES (20, 20, 'Mason Adams', '1990-05-12', 'Male', 'USA');

-- Sample data for the Role table
INSERT INTO Role VALUES (1, 'Student', 'Role for students');
INSERT INTO Role VALUES (2, 'Teacher', 'Role for teachers');
INSERT INTO Role VALUES (3, 'Admin', 'Role for administrators');
INSERT INTO Role VALUES (4, 'Staff', 'Role for staff');
INSERT INTO Role VALUES (5, 'Guest', 'Role for guests');
INSERT INTO Role VALUES (6, 'Support', 'Role for support');
INSERT INTO Role VALUES (7, 'Alumni', 'Role for alumni');
INSERT INTO Role VALUES (8, 'Researcher', 'Role for researchers');
INSERT INTO Role VALUES (9, 'Librarian', 'Role for librarians');
INSERT INTO Role VALUES (10, 'Manager', 'Role for managers');
INSERT INTO Role VALUES (11, 'Editor', 'Role for editors');
INSERT INTO Role VALUES (12, 'Developer', 'Role for developers');
INSERT INTO Role VALUES (13, 'Designer', 'Role for designers');
INSERT INTO Role VALUES (14, 'Analyst', 'Role for analysts');
INSERT INTO Role VALUES (15, 'Writer', 'Role for writers');
INSERT INTO Role VALUES (16, 'Consultant', 'Role for consultants');
INSERT INTO Role VALUES (17, 'Sales', 'Role for sales');
INSERT INTO Role VALUES (18, 'Marketing', 'Role for marketing');
INSERT INTO Role VALUES (19, 'Intern', 'Role for interns');
INSERT INTO Role VALUES (20, 'Advisor', 'Role for advisors');

-- Sample data for the UserRole table
INSERT INTO UserRole VALUES (1, 1, 1);
INSERT INTO UserRole VALUES (2, 2, 2);
INSERT INTO UserRole VALUES (3, 3, 1);
INSERT INTO UserRole VALUES (4, 4, 1);
INSERT INTO UserRole VALUES (5, 5, 1);
INSERT INTO UserRole VALUES (6, 6, 2);
INSERT INTO UserRole VALUES (7, 7, 1);
INSERT INTO UserRole VALUES (8, 8, 2);
INSERT INTO UserRole VALUES (9, 9, 1);
INSERT INTO UserRole VALUES (10, 10, 2);
INSERT INTO UserRole VALUES (11, 11, 1);
INSERT INTO UserRole VALUES (12, 12, 2);
INSERT INTO UserRole VALUES (13, 13, 1);
INSERT INTO UserRole VALUES (14, 14, 2);
INSERT INTO UserRole VALUES (15, 15, 1);
INSERT INTO UserRole VALUES (16, 16, 2);
INSERT INTO UserRole VALUES (17, 17, 1);
INSERT INTO UserRole VALUES (18, 18, 2);
INSERT INTO UserRole VALUES (19, 19, 1);
INSERT INTO UserRole VALUES (20, 20, 2);

-- Sample data for the Course table
INSERT INTO Course VALUES (1, 'Introduction to Programming', 'Basic programming concepts', '2023-03-01', '2023-04-30', 'abc123');
INSERT INTO Course VALUES (2, 'Database Management', 'SQL and database concepts', '2023-05-01', '2023-06-30', 'xyz789');
INSERT INTO Course VALUES (3, 'Machine Learning Basics', 'Introduction to ML concepts', '2023-07-01', '2023-08-30', 'ml123');
INSERT INTO Course VALUES (4, 'Web Development Fundamentals', 'Basics of web development', '2023-09-01', '2023-10-31', 'web456');
INSERT INTO Course VALUES (5, 'Data Structures', 'Introduction to data structures', '2023-07-01', '2023-08-31', 'ds789');
INSERT INTO Course VALUES (6, 'Software Engineering', 'Principles of software engineering', '2023-09-01', '2023-10-30', 'se567');
INSERT INTO Course VALUES (7, 'Algorithms', 'Introduction to algorithms', '2023-09-01', '2023-10-31', 'algo456');
INSERT INTO Course VALUES (8, 'Computer Networks', 'Basics of computer networks', '2023-11-01', '2023-12-31', 'net789');
INSERT INTO Course VALUES (9, 'Operating Systems', 'Principles of operating systems', '2023-11-10', '2023-12-31', 'os123');
INSERT INTO Course VALUES (10, 'Data Mining', 'Introduction to data mining', '2024-01-01', '2024-02-28', 'data456');
INSERT INTO Course VALUES (11, 'Computer Architecture', 'Basics of computer architecture', '2024-05-01', '2024-06-30', 'arch123');
INSERT INTO Course VALUES (12, 'Artificial Intelligence', 'Introduction to AI concepts', '2024-07-01', '2024-08-31', 'ai456');
INSERT INTO Course VALUES (13, 'Computer Graphics', 'Introduction to computer graphics', '2024-11-01', '2024-12-31', 'graphics123');
INSERT INTO Course VALUES (14, 'Software Testing', 'Fundamentals of software testing', '2025-01-01', '2025-02-28', 'testing456');
INSERT INTO Course VALUES (15, 'Web Development', 'Introduction to web development', '2025-05-01', '2025-06-30', 'webdev123');
INSERT INTO Course VALUES (16, 'Mobile App Development', 'Fundamentals of mobile app development', '2025-07-01', '2025-08-31', 'mobile123');
INSERT INTO Course VALUES (17, 'Cybersecurity', 'Fundamentals of cybersecurity', '2026-11-01', '2026-12-31', 'cyber123');
INSERT INTO Course VALUES (18, 'Data Science', 'Introduction to data science', '2027-01-01', '2027-02-28', 'datascience456');
INSERT INTO Course VALUES (19, 'Machine Learning', 'Fundamentals of machine learning', '2027-05-01', '2027-06-30', 'ml123');
INSERT INTO Course VALUES (20, 'Software Engineering', 'Introduction to software engineering', '2027-07-01', '2027-08-31', 'software123');

-- Sample data for the CourseModule table
INSERT INTO CourseModule VALUES (1, 1, 'Variables and Data Types', 'Lesson', 'Introduction to variables and data types');
INSERT INTO CourseModule VALUES (2, 1, 'Conditional Statements', 'Lesson', 'Understanding if-else statements');
INSERT INTO CourseModule VALUES (3, 3, 'Introduction to ML Algorithms', 'Lesson', 'Overview of machine learning algorithms');
INSERT INTO CourseModule VALUES (4, 4, 'HTML Basics', 'Lesson', 'Introduction to HTML');
INSERT INTO CourseModule VALUES (5, 5, 'Arrays and Linked Lists', 'Lesson', 'Basics of arrays and linked lists');
INSERT INTO CourseModule VALUES (6, 5, 'Stacks and Queues', 'Lesson', 'Understanding stacks and queues');
INSERT INTO CourseModule VALUES (7, 7, 'Sorting Algorithms', 'Lesson', 'Understanding sorting algorithms');
INSERT INTO CourseModule VALUES (8, 7, 'Search Algorithms', 'Lesson', 'Exploring search algorithms');
INSERT INTO CourseModule VALUES (9, 9, 'Memory Management', 'Lesson', 'Understanding memory management in OS');
INSERT INTO CourseModule VALUES (10, 9, 'Process Scheduling', 'Lesson', 'Exploring process scheduling algorithms');
INSERT INTO CourseModule VALUES (11, 11, 'CPU Design', 'Lesson', 'Understanding CPU design principles');
INSERT INTO CourseModule VALUES (12, 11, 'Memory Systems', 'Lesson', 'Exploring computer memory systems');
INSERT INTO CourseModule VALUES (13, 13, 'Rendering Techniques', 'Lesson', 'Understanding rendering techniques');
INSERT INTO CourseModule VALUES (14, 13, '3D Modeling', 'Lesson', 'Exploring 3D modeling concepts');
INSERT INTO CourseModule VALUES (15, 15, 'HTML & CSS', 'Lesson', 'Introduction to HTML and CSS');
INSERT INTO CourseModule VALUES (16, 15, 'JavaScript', 'Lesson', 'Fundamentals of JavaScript');
INSERT INTO CourseModule VALUES (17, 17, 'Network Security', 'Lesson', 'Understanding network security');
INSERT INTO CourseModule VALUES (18, 17, 'Cyber Threats', 'Lesson', 'Exploring cyber threats');
INSERT INTO CourseModule VALUES (19, 19, 'Supervised Learning', 'Lesson', 'Understanding supervised learning');
INSERT INTO CourseModule VALUES (20, 19, 'Unsupervised Learning', 'Lesson', 'Exploring unsupervised learning');

-- Sample data for the ModuleContent table
INSERT INTO ModuleContent VALUES (1, 1, 'Text', 'This module covers the basics of variables and data types.');
INSERT INTO ModuleContent VALUES (2, 2, 'Text', 'This module covers conditional statements.');
INSERT INTO ModuleContent VALUES (3, 3, 'Text', 'This module covers different ML algorithms.');
INSERT INTO ModuleContent VALUES (4, 4, 'Text', 'This module covers basic HTML tags.');
INSERT INTO ModuleContent VALUES (5, 5, 'Text', 'This module covers the basics of data structures.');
INSERT INTO ModuleContent VALUES (6, 6, 'Text', 'This module focuses on software engineering principles.');
INSERT INTO ModuleContent VALUES (7, 7, 'Text', 'This module covers different sorting algorithms.');
INSERT INTO ModuleContent VALUES (8, 8, 'Text', 'This module focuses on computer network fundamentals.');
INSERT INTO ModuleContent VALUES (9, 9, 'Text', 'This module covers memory management concepts.');
INSERT INTO ModuleContent VALUES (10, 10, 'Text', 'This module focuses on data mining techniques.');
INSERT INTO ModuleContent VALUES (11, 11, 'Text', 'This module covers CPU design concepts.');
INSERT INTO ModuleContent VALUES (12, 12, 'Text', 'This module focuses on memory system architectures.');
INSERT INTO ModuleContent VALUES (13, 13, 'Text', 'This module covers various rendering techniques.');
INSERT INTO ModuleContent VALUES (14, 14, 'Text', 'This module focuses on principles of 3D modeling.');
INSERT INTO ModuleContent VALUES (15, 15, 'Text', 'This module covers basics of HTML and CSS.');
INSERT INTO ModuleContent VALUES (16, 16, 'Text', 'This module focuses on core concepts of JavaScript.');
INSERT INTO ModuleContent VALUES (17, 17, 'Text', 'This module covers various network security techniques.');
INSERT INTO ModuleContent VALUES (18, 18, 'Text', 'This module focuses on different types of cyber threats.');
INSERT INTO ModuleContent VALUES (19, 19, 'Text', 'This module covers supervised learning techniques.');
INSERT INTO ModuleContent VALUES (20, 20, 'Text', 'This module focuses on unsupervised learning concepts.');

-- Sample data for the Enrollment table
INSERT INTO Enrollment VALUES (1, 1, 1, '2023-03-05', 'Enrolled');
INSERT INTO Enrollment VALUES (2, 2, 2, '2023-03-10', 'Enrolled');
INSERT INTO Enrollment VALUES (3, 3, 3, '2023-07-05', 'Enrolled');
INSERT INTO Enrollment VALUES (4, 4, 4, '2023-09-10', 'Enrolled');
INSERT INTO Enrollment VALUES (5, 5, 5, '2023-07-05', 'Enrolled');
INSERT INTO Enrollment VALUES (6, 6, 6, '2023-09-10', 'Enrolled');
INSERT INTO Enrollment VALUES (7, 7, 7, '2023-09-10', 'Enrolled');
INSERT INTO Enrollment VALUES (8, 8, 8, '2023-11-15', 'Enrolled');
INSERT INTO Enrollment VALUES (9, 9, 9, '2023-11-15', 'Enrolled');
INSERT INTO Enrollment VALUES (10, 10, 10, '2024-01-05', 'Enrolled');
INSERT INTO Enrollment VALUES (11, 11, 11, '2024-05-05', 'Enrolled');
INSERT INTO Enrollment VALUES (12, 12, 12, '2024-07-10', 'Enrolled');
INSERT INTO Enrollment VALUES (13, 13, 13, '2024-11-05', 'Enrolled');
INSERT INTO Enrollment VALUES (14, 14, 14, '2025-01-10', 'Enrolled');
INSERT INTO Enrollment VALUES (15, 15, 15, '2025-05-05', 'Enrolled');
INSERT INTO Enrollment VALUES (16, 16, 16, '2025-07-10', 'Enrolled');
INSERT INTO Enrollment VALUES (17, 17, 17, '2026-11-05', 'Enrolled');
INSERT INTO Enrollment VALUES (18, 18, 18, '2027-01-10', 'Enrolled');
INSERT INTO Enrollment VALUES (19, 19, 19, '2027-05-05', 'Enrolled');
INSERT INTO Enrollment VALUES (20, 20, 20, '2027-07-10', 'Enrolled');

-- Sample data for the Grade table
INSERT INTO Grade VALUES (1, 1, 90, 'Good work!');
INSERT INTO Grade VALUES (2, 2, 85, 'Well done.');
INSERT INTO Grade VALUES (3, 3, 88, 'Nice work!');
INSERT INTO Grade VALUES (4, 4, 92, 'Great job!');
INSERT INTO Grade VALUES (5, 5, 85, 'Good work!');
INSERT INTO Grade VALUES (6, 6, 90, 'Well done!');
INSERT INTO Grade VALUES (7, 7, 88, 'Great work!');
INSERT INTO Grade VALUES (8, 8, 92, 'Excellent job!');
INSERT INTO Grade VALUES (9, 9, 85, 'Well done!');
INSERT INTO Grade VALUES (10, 10, 90, 'Excellent work!');
INSERT INTO Grade VALUES (11, 11, 87, 'Great job!');
INSERT INTO Grade VALUES (12, 12, 93, 'Excellent work!');
INSERT INTO Grade VALUES (13, 13, 88, 'Well done!');
INSERT INTO Grade VALUES (14, 14, 95, 'Excellent work!');
INSERT INTO Grade VALUES (15, 15, 86, 'Great job!');
INSERT INTO Grade VALUES (16, 16, 93, 'Excellent work!');
INSERT INTO Grade VALUES (17, 17, 85, 'Well done!');
INSERT INTO Grade VALUES (18, 18, 92, 'Excellent work!');
INSERT INTO Grade VALUES (19, 19, 88, 'Great job!');
INSERT INTO Grade VALUES (20, 20, 94, 'Excellent work!');

-- Sample data for the Submission table
INSERT INTO Submission VALUES (1, 1, '2023-04-15', 'Submitted code for the assignment.');
INSERT INTO Submission VALUES (2, 2, '2023-05-20', 'Submitted database design project.');
INSERT INTO Submission VALUES (3, 3, '2023-08-15', 'Submitted ML project.');
INSERT INTO Submission VALUES (4, 4, '2023-10-20', 'Submitted web development assignment.');
INSERT INTO Submission VALUES (5, 5, '2023-08-15', 'Submitted data structures assignment.');
INSERT INTO Submission VALUES (6, 6, '2023-10-20', 'Submitted software engineering project.');
INSERT INTO Submission VALUES (7, 7, '2023-10-20', 'Submitted algorithms assignment.');
INSERT INTO Submission VALUES (8, 8, '2024-01-05', 'Submitted computer networks project.');
INSERT INTO Submission VALUES (9, 9, '2023-12-05', 'Submitted OS assignment.');
INSERT INTO Submission VALUES (10, 10, '2024-02-10', 'Submitted data mining project.');
INSERT INTO Submission VALUES (11, 11, '2024-06-15', 'Submitted computer architecture assignment.');
INSERT INTO Submission VALUES (12, 12, '2024-08-20', 'Submitted AI project.');
INSERT INTO Submission VALUES (13, 13, '2024-12-15', 'Submitted computer graphics assignment.');
INSERT INTO Submission VALUES (14, 14, '2025-02-20', 'Submitted software testing project.');
INSERT INTO Submission VALUES (15, 15, '2025-06-15', 'Submitted web development assignment.');
INSERT INTO Submission VALUES (16, 16, '2025-08-20', 'Submitted mobile app development project.');
INSERT INTO Submission VALUES (17, 17, '2026-12-15', 'Submitted cybersecurity assignment.');
INSERT INTO Submission VALUES (18, 18, '2027-02-20', 'Submitted data science project.');
INSERT INTO Submission VALUES (19, 19, '2027-06-15', 'Submitted machine learning assignment.');
INSERT INTO Submission VALUES (20, 20, '2027-08-20', 'Submitted software engineering project.');

-- Sample data for the UserCourseEnrollment table
INSERT INTO UserCourseEnrollment VALUES (1, 1, '2023-03-05');
INSERT INTO UserCourseEnrollment VALUES (2, 2, '2023-03-10');
INSERT INTO UserCourseEnrollment VALUES (3, 3, '2023-07-05');
INSERT INTO UserCourseEnrollment VALUES (4, 4, '2023-09-10');
INSERT INTO UserCourseEnrollment VALUES (5, 5, '2023-07-05');
INSERT INTO UserCourseEnrollment VALUES (6, 6, '2023-09-10');
INSERT INTO UserCourseEnrollment VALUES (7, 7, '2023-09-10');
INSERT INTO UserCourseEnrollment VALUES (8, 8, '2023-11-15');
INSERT INTO UserCourseEnrollment VALUES (9, 9, '2023-11-15');
INSERT INTO UserCourseEnrollment VALUES (10, 10, '2024-01-05');
INSERT INTO UserCourseEnrollment VALUES (11, 11, '2024-05-05');
INSERT INTO UserCourseEnrollment VALUES (12, 12, '2024-07-10');
INSERT INTO UserCourseEnrollment VALUES (13, 13, '2024-11-05');
INSERT INTO UserCourseEnrollment VALUES (14, 14, '2025-01-10');
INSERT INTO UserCourseEnrollment VALUES (15, 15, '2025-05-05');
INSERT INTO UserCourseEnrollment VALUES (16, 16, '2025-07-10');
INSERT INTO UserCourseEnrollment VALUES (17, 17, '2026-11-05');
INSERT INTO UserCourseEnrollment VALUES (18, 18, '2027-01-10');
INSERT INTO UserCourseEnrollment VALUES (19, 19, '2027-05-05');
INSERT INTO UserCourseEnrollment VALUES (20, 20, '2027-07-10');
