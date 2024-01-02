-- Create User-related tables
CREATE TABLE User (
	user_id INT PRIMARY KEY,
	username VARCHAR(50),
	password VARCHAR(50),
	email VARCHAR(100),
	registration_date DATE,
	last_login_date DATE
);

CREATE TABLE UserProfile (
	profile_id INT PRIMARY KEY,
	user_id INT,
	full_name VARCHAR(100),
	date_of_birth DATE,
	gender VARCHAR(10),
	country VARCHAR(50),
	FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE UserRole (
	user_role_id INT PRIMARY KEY,
	user_id INT,
	role_id INT,
	FOREIGN KEY (user_id) REFERENCES User(user_id),
	FOREIGN KEY (role_id) REFERENCES Role(role_id)
);

CREATE TABLE Role (
	role_id INT PRIMARY KEY,
	role_name VARCHAR(50),
	description VARCHAR(255)
);

-- Create Course-related tables
CREATE TABLE Course (
	course_id INT PRIMARY KEY,
	course_name VARCHAR(100),
	description TEXT,
	start_date DATE,
	end_date DATE,
	enrollment_key VARCHAR(20)
);

CREATE TABLE CourseModule (
	module_id INT PRIMARY KEY,
	course_id INT,
	module_name VARCHAR(100),
	module_type VARCHAR(50),
	module_description TEXT,
	FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

CREATE TABLE ModuleContent (
	content_id INT PRIMARY KEY,
	module_id INT,
	content_type VARCHAR(50),
	content_data TEXT,
	FOREIGN KEY (module_id) REFERENCES CourseModule(module_id)
);

-- Create Enrollment, Grade, and Submission tables
CREATE TABLE Enrollment (
	enrollment_id INT PRIMARY KEY,
	user_id INT,
	course_id INT,
	enrollment_date DATE,
	enrollment_status VARCHAR(20),
	FOREIGN KEY (user_id) REFERENCES User(user_id),
	FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

CREATE TABLE Grade (
	grade_id INT PRIMARY KEY,
	enrollment_id INT,
	grade_value FLOAT,
	feedback TEXT,
	FOREIGN KEY (enrollment_id) REFERENCES Enrollment(enrollment_id)
);

CREATE TABLE Submission (
	submission_id INT PRIMARY KEY,
	enrollment_id INT,
	submission_date DATE,
	submitted_content TEXT,
	FOREIGN KEY (enrollment_id) REFERENCES Enrollment(enrollment_id)
);

-- Insert sample data into User-related tables
INSERT INTO User VALUES (1, 'john_doe', 'password123', 'john@example.com', '2023-01-01', '2023-01-10');
INSERT INTO User VALUES (2, 'jane_smith', 'hello456', 'jane@example.com', '2023-02-15', '2023-02-20');

INSERT INTO UserProfile VALUES (1, 1, 'John Doe', '1990-05-15', 'Male', 'USA');
INSERT INTO UserProfile VALUES (2, 2, 'Jane Smith', '1988-09-22', 'Female', 'Canada');

INSERT INTO UserRole VALUES (1, 1, 1);
INSERT INTO UserRole VALUES (2, 2, 2);

INSERT INTO Role VALUES (1, 'Student', 'Role for students');
INSERT INTO Role VALUES (2, 'Teacher', 'Role for teachers');

-- Insert sample data into Course-related tables
INSERT INTO Course VALUES (1, 'Introduction to Programming', 'Basic programming concepts', '2023-03-01', '2023-04-30', 'abc123');
INSERT INTO Course VALUES (2, 'Database Management', 'SQL and database concepts', '2023-05-01', '2023-06-30', 'xyz789');

INSERT INTO CourseModule VALUES (1, 1, 'Variables and Data Types', 'Lesson', 'Introduction to variables and data types');
INSERT INTO CourseModule VALUES (2, 1, 'Conditional Statements', 'Lesson', 'Understanding if-else statements');

INSERT INTO ModuleContent VALUES (1, 1, 'Text', 'This module covers the basics of variables and data types.');
INSERT INTO ModuleContent VALUES (2, 2, 'Text', 'This module covers conditional statements.');

-- Insert sample data into Enrollment, Grade, and Submission tables
INSERT INTO Enrollment VALUES (1, 1, 1, '2023-03-05', 'Enrolled');
INSERT INTO Enrollment VALUES (2, 2, 2, '2023-03-10', 'Enrolled');

INSERT INTO Grade VALUES (1, 1, 90, 'Good work!');
INSERT INTO Grade VALUES (2, 2, 85, 'Well done.');

INSERT INTO Submission VALUES (1, 1, '2023-04-15', 'Submitted code for the assignment.');
INSERT INTO Submission VALUES (2, 2, '2023-05-20', 'Submitted database design project.');
