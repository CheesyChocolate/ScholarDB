-- Create User table
CREATE TABLE User (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50),
    email VARCHAR(100),
    registration_date DATE,
    last_login_date DATE
);

-- Create Course table
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    description TEXT,
    start_date DATE,
    end_date DATE,
    enrollment_key VARCHAR(20)
);

-- Create Enrollment table
CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY,
    user_id INT,
    course_id INT,
    enrollment_date DATE,
    enrollment_status VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

-- Insert initial data into User table
INSERT INTO User (user_id, username, password, email, registration_date, last_login_date)
VALUES (1, 'example_user', 'password123', 'user@example.com', '2023-01-01', '2023-01-01');

-- Insert initial data into Course table
INSERT INTO Course (course_id, course_name, description, start_date, end_date, enrollment_key)
VALUES (1, 'Example Course', 'Course Description', '2023-01-01', '2023-12-31', 'enrollment_key');

-- Insert initial data into Enrollment table
INSERT INTO Enrollment (enrollment_id, user_id, course_id, enrollment_date, enrollment_status)
VALUES (1, 1, 1, '2023-01-01', 'Enrolled');
