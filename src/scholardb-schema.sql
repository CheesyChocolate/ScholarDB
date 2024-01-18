-- Create User-related tables
CREATE TABLE User (
	user_id INT PRIMARY KEY,
	username VARCHAR(50),
	password VARCHAR(50),
	email VARCHAR(100),
	registration_date DATE,
	last_login_date DATE
);

CREATE TABLE Role (
	role_id INT PRIMARY KEY,
	role_name VARCHAR(50),
	description VARCHAR(255)
);

CREATE TABLE UserRole (
	user_role_id INT PRIMARY KEY,
	user_id INT,
	role_id INT,
	FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE,
	FOREIGN KEY (role_id) REFERENCES Role(role_id) ON DELETE CASCADE
);

CREATE TABLE UserProfile (
	profile_id INT PRIMARY KEY,
	user_id INT,
	full_name VARCHAR(100),
	date_of_birth DATE,
	gender VARCHAR(10),
	country VARCHAR(50),
	FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE SET NULL
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
	FOREIGN KEY (course_id) REFERENCES Course(course_id) ON DELETE CASCADE
);

CREATE TABLE ModuleContent (
	content_id INT PRIMARY KEY,
	module_id INT,
	content_type VARCHAR(50),
	content_data TEXT,
	FOREIGN KEY (module_id) REFERENCES CourseModule(module_id) ON DELETE CASCADE
);

-- Create Enrollment, Grade, and Submission tables
CREATE TABLE Enrollment (
	enrollment_id INT PRIMARY KEY,
	user_id INT,
	course_id INT,
	enrollment_date DATE,
	enrollment_status VARCHAR(20),
	FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE SET NULL,
	FOREIGN KEY (course_id) REFERENCES Course(course_id) ON DELETE CASCADE
);

CREATE TABLE Grade (
	grade_id INT PRIMARY KEY,
	enrollment_id INT,
	grade_value FLOAT,
	feedback TEXT,
	FOREIGN KEY (enrollment_id) REFERENCES Enrollment(enrollment_id) ON DELETE CASCADE
);

CREATE TABLE Submission (
	submission_id INT PRIMARY KEY,
	enrollment_id INT,
	submission_date DATE,
	submitted_content TEXT,
	FOREIGN KEY (enrollment_id) REFERENCES Enrollment(enrollment_id) ON DELETE CASCADE
);

-- Create UserCourseEnrollment table
CREATE TABLE UserCourseEnrollment (
	user_id INT,
	course_id INT,
	enrollment_date DATE,
	PRIMARY KEY (user_id, course_id),
	FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE,
	FOREIGN KEY (course_id) REFERENCES Course(course_id) ON DELETE CASCADE
);
