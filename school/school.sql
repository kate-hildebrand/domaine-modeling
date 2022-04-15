-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS sections;
DROP TABLE IF EXISTS enrollments;

CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

-- Create the rest of the tables
--Create teachers 
CREATE TABLE teachers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    bio TEXT
);

--Create courses 
CREATE TABLE courses (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT,
      description TEXT
);

--create sections 
CREATE TABLE sections (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        course_id INTEGER,
        teacher_id INTEGER
);

--join tables to make enrollment 
CREATE TABLE enrollments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    section_id INTEGER,
    student_id INTEGER
);

