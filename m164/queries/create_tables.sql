CREATE DATABASE IF NOT EXISTS m164;

USE m164;

-- MARIADB
CREATE TABLE
  contact (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(20) UNIQUE NOT NULL,
    mail VARCHAR(50) UNIQUE NOT NULL,
    corp_mail VARCHAR(50) UNIQUE NOT NULL,
    role ENUM ('student', 'teacher') NOT NULL
  );

CREATE TABLE
  class (
    id INT PRIMARY KEY AUTO_INCREMENT,
    bm TINYINT (1) NOT NULL DEFAULT 0,
    type ENUM (
      'Informatics',
      'Electronics',
      'Mechanics',
      'Digital Arts',
      'Robotics',
      'Environmental Science'
    ) NOT NULL,
    grad_year YEAR NOT NULL,
    start_year YEAR NOT NULL,
    CHECK (grad_year > start_year)
  );

CREATE TABLE
  room (
    id INT PRIMARY KEY AUTO_INCREMENT,
    floor INT NOT NULL,
    number INT NOT NULL,
    building VARCHAR(50) NOT NULL,
    capacity INT NOT NULL
  );

CREATE TABLE
  student (
    id VARCHAR(20) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    born DATE NOT NULL,
    stud_mail VARCHAR(50) UNIQUE NOT NULL,
    contact_id INT NOT NULL,
    class_id INT NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contact (id) ON DELETE RESTRICT,
    FOREIGN KEY (class_id) REFERENCES class (id) ON DELETE RESTRICT
  );

CREATE TABLE
  teacher (
    id VARCHAR(20) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    contact_id INT NOT NULL,
    class_id INT NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contact (id) ON DELETE RESTRICT,
    FOREIGN KEY (class_id) REFERENCES class (id) ON DELETE RESTRICT
  );

CREATE TABLE
  course (
    id INT PRIMARY KEY AUTO_INCREMENT,
    author_id VARCHAR(20),
    subject VARCHAR(50) NOT NULL,
    number INT NOT NULL,
    hours INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES teacher (id) ON DELETE SET NULL
  );

CREATE TABLE
  lesson (
    id INT PRIMARY KEY AUTO_INCREMENT,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    teacher_id VARCHAR(20),
    course_id INT NOT NULL,
    room_id INT,
    class_id INT NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES teacher (id) ON DELETE SET NULL,
    FOREIGN KEY (room_id) REFERENCES room (id) ON DELETE SET NULL,
    FOREIGN KEY (class_id) REFERENCES class (id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES course (id) ON DELETE CASCADE,
    CHECK (start_time < end_time)
  );

CREATE TABLE
  absence (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date DATE NOT NULL,
    hours INT NOT NULL,
    confirmed TINYINT (1) NOT NULL DEFAULT 0,
    lesson_id INT NOT NULL,
    student_id VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE,
    FOREIGN KEY (lesson_id) REFERENCES lesson (id) ON DELETE CASCADE
  );

CREATE TABLE
  schedule (
    id INT PRIMARY KEY AUTO_INCREMENT,
    notes TEXT,
    type ENUM ('regular', 'tutoring', 'exam') NOT NULL DEFAULT 'regular',
    date DATE NOT NULL,
    confirmed TINYINT (1) NOT NULL DEFAULT 0,
    room_id INT NOT NULL,
    FOREIGN KEY (room_id) REFERENCES room (id) ON DELETE CASCADE
  );

CREATE TABLE
  lesson_schedule (
    id INT PRIMARY KEY AUTO_INCREMENT,
    lesson_id INT NOT NULL,
    schedule_id INT NOT NULL,
    FOREIGN KEY (lesson_id) REFERENCES lesson (id),
    FOREIGN KEY (schedule_id) REFERENCES schedule (id)
  );

CREATE TABLE
  tutoring (
    id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    room_id INT,
    FOREIGN KEY (course_id) REFERENCES course (id) ON DELETE CASCADE,
    FOREIGN KEY (room_id) REFERENCES room (id) ON DELETE SET NULL,
    CHECK (start_time < end_time)
  );

CREATE TABLE
  students_tutoring (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id VARCHAR(20) NOT NULL,
    tutoring_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE,
    FOREIGN KEY (tutoring_id) REFERENCES tutoring (id) ON DELETE CASCADE
  );