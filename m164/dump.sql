SET
  NAMES utf8;

SET
  time_zone = '+00:00';

SET
  foreign_key_checks = 0;

SET
  sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET
  NAMES utf8mb4;

DROP DATABASE IF EXISTS `m164`;

CREATE DATABASE `m164` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `m164`;

DROP TABLE IF EXISTS `absence`;

CREATE TABLE
  `absence` (
    `id` int (11) NOT NULL AUTO_INCREMENT,
    `date` date NOT NULL,
    `hours` int (11) NOT NULL,
    `confirmed` tinyint (1) NOT NULL DEFAULT 0,
    `lesson_id` int (11) NOT NULL,
    `student_id` varchar(20) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `student_id` (`student_id`),
    KEY `lesson_id` (`lesson_id`),
    CONSTRAINT `absence_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE,
    CONSTRAINT `absence_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`) ON DELETE CASCADE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

INSERT INTO
  `absence` (
    `id`,
    `date`,
    `hours`,
    `confirmed`,
    `lesson_id`,
    `student_id`
  )
VALUES
  (1, '2024-03-24', 2, 1, 1, 'S001'),
  (2, '2024-03-25', 1, 0, 2, 'S002'),
  (3, '2024-03-26', 3, 0, 3, 'S003'),
  (4, '2024-03-27', 4, 1, 4, 'S004'),
  (5, '2024-03-28', 2, 1, 5, 'S005'),
  (6, '2024-03-29', 1, 0, 6, 'S006'),
  (7, '2024-03-30', 3, 1, 7, 'S007'),
  (8, '2024-03-31', 4, 1, 8, 'S008'),
  (9, '2024-04-01', 2, 0, 9, 'S009'),
  (10, '2024-04-02', 1, 1, 10, 'S010'),
  (11, '2024-04-03', 2, 0, 13, 'S014'),
  (12, '2024-04-04', 3, 1, 14, 'S015'),
  (13, '2024-04-05', 1, 1, 15, 'S016');

DROP TABLE IF EXISTS `class`;

CREATE TABLE
  `class` (
    `id` int (11) NOT NULL AUTO_INCREMENT,
    `bm` tinyint (1) NOT NULL DEFAULT 0,
    `type` enum (
      'Informatics',
      'Electronics',
      'Mechanics',
      'Digital Arts',
      'Robotics',
      'Environmental Science'
    ) NOT NULL,
    `grad_year` year (4) NOT NULL,
    `start_year` year (4) NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `CONSTRAINT_1` CHECK (`grad_year` > `start_year`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

INSERT INTO
  `class` (`id`, `bm`, `type`, `grad_year`, `start_year`)
VALUES
  (1, 0, 'Informatics', '2025', '2022'),
  (2, 1, 'Electronics', '2025', '2022'),
  (3, 0, 'Mechanics', '2025', '2022'),
  (4, 1, 'Informatics', '2026', '2023'),
  (5, 0, 'Electronics', '2026', '2023'),
  (6, 1, 'Mechanics', '2026', '2023'),
  (7, 0, 'Informatics', '2027', '2024'),
  (8, 1, 'Electronics', '2027', '2024'),
  (9, 0, 'Mechanics', '2027', '2024'),
  (10, 1, 'Informatics', '2028', '2025'),
  (11, 1, 'Robotics', '2026', '2023'),
  (12, 0, 'Digital Arts', '2027', '2024'),
  (13, 1, 'Environmental Science', '2028', '2025'),
  (14, 0, 'Robotics', '2029', '2025'),
  (15, 1, 'Digital Arts', '2030', '2026'),
  (16, 0, 'Environmental Science', '2031', '2027');

DROP TABLE IF EXISTS `contact`;

CREATE TABLE
  `contact` (
    `id` int (11) NOT NULL AUTO_INCREMENT,
    `phone` varchar(20) NOT NULL,
    `mail` varchar(50) NOT NULL,
    `corp_mail` varchar(50) NOT NULL,
    `role` enum ('student', 'teacher') NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `phone` (`phone`),
    UNIQUE KEY `mail` (`mail`),
    UNIQUE KEY `corp_mail` (`corp_mail`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

INSERT INTO
  `contact` (`id`, `phone`, `mail`, `corp_mail`, `role`)
VALUES
  (
    1,
    '0791111111',
    'example1@example.com',
    'corp1@example.com',
    'student'
  ),
  (
    2,
    '0791111112',
    'example3@example.com',
    'corp3@example.com',
    'student'
  ),
  (
    3,
    '0791111113',
    'example5@example.com',
    'corp5@example.com',
    'student'
  ),
  (
    4,
    '0791111114',
    'example7@example.com',
    'corp7@example.com',
    'student'
  ),
  (
    5,
    '0791111115',
    'example9@example.com',
    'corp9@example.com',
    'student'
  ),
  (
    6,
    '0791111116',
    'example11@example.com',
    'corp11@example.com',
    'student'
  ),
  (
    7,
    '0791111117',
    'example13@example.com',
    'corp13@example.com',
    'student'
  ),
  (
    8,
    '0791111118',
    'example15@example.com',
    'corp15@example.com',
    'student'
  ),
  (
    9,
    '0791111119',
    'example17@example.com',
    'corp17@example.com',
    'student'
  ),
  (
    10,
    '0791111110',
    'example19@example.com',
    'corp19@example.com',
    'student'
  ),
  (
    11,
    '07911111121',
    'example2@example.com',
    'corp2@example.com',
    'teacher'
  ),
  (
    12,
    '0791111122',
    'example4@example.com',
    'corp4@example.com',
    'teacher'
  ),
  (
    13,
    '0791111123',
    'example6@example.com',
    'corp6@example.com',
    'teacher'
  ),
  (
    14,
    '0791111124',
    'example8@example.com',
    'corp8@example.com',
    'teacher'
  ),
  (
    15,
    '0791111125',
    'example10@example.com',
    'corp10@example.com',
    'teacher'
  ),
  (
    16,
    '0791111126',
    'example12@example.com',
    'corp12@example.com',
    'teacher'
  ),
  (
    17,
    '0791111127',
    'example14@example.com',
    'corp14@example.com',
    'teacher'
  ),
  (
    18,
    '0791111128',
    'example16@example.com',
    'corp16@example.com',
    'teacher'
  ),
  (
    19,
    '0791111129',
    'example18@example.com',
    'corp18@example.com',
    'teacher'
  ),
  (
    20,
    '0791111130',
    'example20@example.com',
    'corp20@example.com',
    'teacher'
  ),
  (
    21,
    '0792222345',
    'luca.flori@unifict.com',
    'luca.flori@techco.com',
    'student'
  ),
  (
    22,
    '0792345678',
    'eva.luna@brightmail.com',
    'eva.l@corpworld.com',
    'teacher'
  ),
  (
    23,
    '0799876543',
    'max.kern@insightnet.com',
    'mkern@innovatehq.com',
    'student'
  ),
  (
    24,
    '0798765432',
    'julia.graf@pioneers.io',
    'julia.g@visionaryarts.com',
    'teacher'
  ),
  (
    25,
    '0797654321',
    'simon.becher@eduverse.com',
    'simon.b@ecolight.org',
    'student'
  ),
  (
    26,
    '0793456789',
    'martin.zeller@adventures.io',
    'm.zeller@explorer.com',
    'teacher'
  ),
  (
    27,
    '0794567890',
    'anita.schmid@creatives.net',
    'a.schmid@artistsworld.com',
    'student'
  ),
  (
    28,
    '0795678901',
    'felix.jaeger@innovate.io',
    'f.jaeger@futuretech.com',
    'teacher'
  ),
  (
    29,
    '0796789012',
    'lisa.maier@visionaries.org',
    'l.maier@nextgen.com',
    'student'
  ),
  (
    30,
    '0797890123',
    'tom.muller@discoveries.com',
    't.muller@sciencehub.com',
    'teacher'
  );

DROP TABLE IF EXISTS `course`;

CREATE TABLE
  `course` (
    `id` int (11) NOT NULL AUTO_INCREMENT,
    `author_id` varchar(20) DEFAULT NULL,
    `subject` varchar(50) NOT NULL,
    `number` int (11) NOT NULL,
    `hours` int (11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `author_id` (`author_id`),
    CONSTRAINT `course_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `teacher` (`id`) ON DELETE SET NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

INSERT INTO
  `course` (`id`, `author_id`, `subject`, `number`, `hours`)
VALUES
  (1, 'T001', 'Computer Science', 101, 45),
  (2, 'T002', 'Physics', 102, 50),
  (3, 'T003', 'Mathematics', 103, 40),
  (4, 'T004', 'English', 104, 35),
  (5, 'T005', 'Biology', 105, 50),
  (6, 'T006', 'Chemistry', 106, 45),
  (7, 'T007', 'History', 107, 40),
  (8, 'T008', 'Geography', 108, 35),
  (9, 'T009', 'Art', 109, 50),
  (10, 'T010', 'Music', 110, 45),
  (11, 'T011', 'Robotics Fundamentals', 111, 60),
  (12, 'T012', 'Sustainable Design', 112, 45),
  (13, 'T013', 'Advanced Robotics', 113, 55),
  (14, 'T014', 'Creative Coding', 114, 45),
  (15, 'T015', 'Eco Design Principles', 115, 50);

DROP TABLE IF EXISTS `lesson`;

CREATE TABLE
  `lesson` (
    `id` int (11) NOT NULL AUTO_INCREMENT,
    `start_time` time NOT NULL,
    `end_time` time NOT NULL,
    `teacher_id` varchar(20) DEFAULT NULL,
    `course_id` int (11) NOT NULL,
    `room_id` int (11) DEFAULT NULL,
    `class_id` int (11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `teacher_id` (`teacher_id`),
    KEY `room_id` (`room_id`),
    KEY `class_id` (`class_id`),
    KEY `course_id` (`course_id`),
    CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE SET NULL,
    CONSTRAINT `lesson_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE SET NULL,
    CONSTRAINT `lesson_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE CASCADE,
    CONSTRAINT `lesson_ibfk_4` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE,
    CONSTRAINT `CONSTRAINT_1` CHECK (`start_time` < `end_time`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

INSERT INTO
  `lesson` (
    `id`,
    `start_time`,
    `end_time`,
    `teacher_id`,
    `course_id`,
    `room_id`,
    `class_id`
  )
VALUES
  (1, '08:00:00', '09:30:00', 'T001', 1, 1, 1),
  (2, '09:45:00', '11:15:00', 'T002', 2, 2, 2),
  (3, '11:30:00', '13:00:00', 'T003', 3, 3, 3),
  (4, '13:15:00', '14:45:00', 'T004', 4, 4, 4),
  (5, '15:00:00', '16:30:00', 'T005', 5, 5, 5),
  (6, '08:00:00', '09:30:00', 'T006', 6, 6, 6),
  (7, '09:45:00', '11:15:00', 'T007', 7, 7, 7),
  (8, '11:30:00', '13:00:00', 'T007', 8, 8, 8),
  (9, '13:15:00', '14:45:00', 'T009', 9, 9, 9),
  (10, '15:00:00', '16:30:00', 'T010', 10, 10, 10),
  (11, '10:00:00', '11:30:00', 'T011', 11, 11, 6),
  (12, '12:00:00', '13:30:00', 'T012', 12, 12, 7),
  (13, '09:00:00', '10:30:00', 'T013', 13, 11, 11),
  (14, '10:45:00', '12:15:00', 'T014', 14, 12, 12),
  (15, '13:00:00', '14:30:00', 'T014', 15, 13, 13);

DROP TABLE IF EXISTS `lesson_schedule`;

CREATE TABLE
  `lesson_schedule` (
    `id` int (11) NOT NULL AUTO_INCREMENT,
    `lesson_id` int (11) NOT NULL,
    `schedule_id` int (11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `lesson_id` (`lesson_id`),
    KEY `schedule_id` (`schedule_id`),
    CONSTRAINT `lesson_schedule_ibfk_1` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`),
    CONSTRAINT `lesson_schedule_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

INSERT INTO
  `lesson_schedule` (`id`, `lesson_id`, `schedule_id`)
VALUES
  (1, 11, 1),
  (2, 12, 2),
  (3, 13, 3),
  (4, 14, 4),
  (5, 15, 5),
  (6, 1, 6),
  (7, 2, 7),
  (8, 3, 8),
  (9, 4, 9),
  (10, 5, 10),
  (11, 6, 1),
  (12, 7, 2),
  (13, 8, 3),
  (14, 9, 4),
  (15, 10, 5);

DROP TABLE IF EXISTS `room`;

CREATE TABLE
  `room` (
    `id` int (11) NOT NULL AUTO_INCREMENT,
    `floor` int (11) NOT NULL,
    `number` int (11) NOT NULL,
    `building` varchar(50) NOT NULL,
    `capacity` int (11) NOT NULL,
    PRIMARY KEY (`id`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

INSERT INTO
  `room` (`id`, `floor`, `number`, `building`, `capacity`)
VALUES
  (1, 1, 101, 'Main Building', 30),
  (2, 2, 201, 'Main Building', 25),
  (3, 1, 102, 'Science Building', 35),
  (4, 2, 202, 'Science Building', 40),
  (5, 1, 103, 'Engineering Building', 20),
  (6, 2, 203, 'Engineering Building', 30),
  (7, 1, 104, 'Arts Building', 25),
  (8, 2, 204, 'Arts Building', 35),
  (9, 1, 105, 'Library Building', 45),
  (10, 2, 205, 'Library Building', 50),
  (11, 3, 301, 'Innovation Hub', 30),
  (12, 2, 210, 'Creative Center', 20),
  (13, 1, 111, 'Tech Tower', 25),
  (14, 1, 106, 'Innovation Center', 20),
  (15, 2, 207, 'Design Hall', 25),
  (16, 3, 308, 'Tech Lab', 30);

DROP TABLE IF EXISTS `schedule`;

CREATE TABLE
  `schedule` (
    `id` int (11) NOT NULL AUTO_INCREMENT,
    `notes` text DEFAULT NULL,
    `type` enum ('regular', 'tutoring', 'exam') NOT NULL DEFAULT 'regular',
    `date` date NOT NULL,
    `confirmed` tinyint (1) NOT NULL DEFAULT 0,
    `room_id` int (11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `room_id` (`room_id`),
    CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE CASCADE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

INSERT INTO
  `schedule` (
    `id`,
    `notes`,
    `type`,
    `date`,
    `confirmed`,
    `room_id`
  )
VALUES
  (
    1,
    'Regular class schedule',
    'regular',
    '2024-03-24',
    1,
    1
  ),
  (
    2,
    'Regular class schedule',
    'regular',
    '2024-03-25',
    1,
    2
  ),
  (
    3,
    'Regular class schedule',
    'regular',
    '2024-03-26',
    1,
    3
  ),
  (
    4,
    'Regular class schedule',
    'regular',
    '2024-03-27',
    1,
    4
  ),
  (
    5,
    'Regular class schedule',
    'regular',
    '2024-03-28',
    1,
    5
  ),
  (
    6,
    'Regular class schedule',
    'regular',
    '2024-03-29',
    1,
    6
  ),
  (
    7,
    'Regular class schedule',
    'regular',
    '2024-03-30',
    1,
    7
  ),
  (
    8,
    'Regular class schedule',
    'regular',
    '2024-03-31',
    1,
    8
  ),
  (
    9,
    'Regular class schedule',
    'regular',
    '2024-04-01',
    1,
    9
  ),
  (
    10,
    'Regular class schedule',
    'regular',
    '2024-04-02',
    1,
    10
  );

DROP TABLE IF EXISTS `student`;

CREATE TABLE
  `student` (
    `id` varchar(20) NOT NULL,
    `first_name` varchar(50) NOT NULL,
    `last_name` varchar(50) NOT NULL,
    `born` date NOT NULL,
    `stud_mail` varchar(50) NOT NULL,
    `contact_id` int (11) NOT NULL,
    `class_id` int (11) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `stud_mail` (`stud_mail`),
    KEY `contact_id` (`contact_id`),
    KEY `class_id` (`class_id`),
    CONSTRAINT `student_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`),
    CONSTRAINT `student_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

INSERT INTO
  `student` (
    `id`,
    `first_name`,
    `last_name`,
    `born`,
    `stud_mail`,
    `contact_id`,
    `class_id`
  )
VALUES
  (
    'S001',
    'John',
    'Doe',
    '2005-05-15',
    'john.doe@student.com',
    1,
    1
  ),
  (
    'S002',
    'Jane',
    'Smith',
    '2004-08-20',
    'jane.smith@student.com',
    2,
    2
  ),
  (
    'S003',
    'Michael',
    'Johnson',
    '2006-02-10',
    'michael.johnson@student.com',
    3,
    3
  ),
  (
    'S004',
    'Emily',
    'Williams',
    '2005-11-30',
    'emily.williams@student.com',
    4,
    4
  ),
  (
    'S005',
    'Daniel',
    'Brown',
    '2004-04-25',
    'daniel.brown@student.com',
    5,
    5
  ),
  (
    'S006',
    'Olivia',
    'Jones',
    '2006-07-12',
    'olivia.jones@student.com',
    6,
    6
  ),
  (
    'S007',
    'William',
    'Garcia',
    '2004-10-18',
    'william.garcia@student.com',
    7,
    7
  ),
  (
    'S008',
    'Sophia',
    'Martinez',
    '2005-12-05',
    'sophia.martinez@student.com',
    8,
    8
  ),
  (
    'S009',
    'James',
    'Lopez',
    '2006-01-08',
    'james.lopez@student.com',
    9,
    9
  ),
  (
    'S010',
    'Isabella',
    'Lee',
    '2004-09-22',
    'isabella.lee@student.com',
    10,
    10
  ),
  (
    'S011',
    'Lara',
    'Meier',
    '2005-04-14',
    'lara.meier@student.com',
    11,
    6
  ),
  (
    'S012',
    'Niklas',
    'Bauer',
    '2006-09-22',
    'niklas.bauer@student.com',
    12,
    7
  ),
  (
    'S013',
    'Sofia',
    'Keller',
    '2004-12-30',
    'sofia.keller@student.com',
    13,
    8
  ),
  (
    'S014',
    'Elena',
    'Richter',
    '2005-02-14',
    'elena.richter@student.com',
    21,
    11
  ),
  (
    'S015',
    'Marco',
    'Fischer',
    '2006-07-22',
    'marco.fischer@student.com',
    22,
    12
  ),
  (
    'S016',
    'Sarah',
    'Weber',
    '2004-10-05',
    'sarah.weber@student.com',
    23,
    13
  ),
  (
    'S017',
    'Alex',
    'Schneider',
    '2007-03-18',
    'alex.schneider@student.com',
    24,
    14
  ),
  (
    'S018',
    'Nicole',
    'Koch',
    '2005-08-09',
    'nicole.koch@student.com',
    25,
    15
  );

DROP TABLE IF EXISTS `students_tutoring`;

CREATE TABLE
  `students_tutoring` (
    `id` int (11) NOT NULL AUTO_INCREMENT,
    `student_id` varchar(20) NOT NULL,
    `tutoring_id` int (11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `student_id` (`student_id`),
    KEY `tutoring_id` (`tutoring_id`),
    CONSTRAINT `students_tutoring_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE,
    CONSTRAINT `students_tutoring_ibfk_2` FOREIGN KEY (`tutoring_id`) REFERENCES `tutoring` (`id`) ON DELETE CASCADE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

INSERT INTO
  `students_tutoring` (`id`, `student_id`, `tutoring_id`)
VALUES
  (1, 'S001', 1),
  (2, 'S002', 2),
  (3, 'S003', 3),
  (4, 'S004', 4),
  (5, 'S005', 5),
  (6, 'S006', 6),
  (7, 'S007', 7),
  (8, 'S008', 8),
  (9, 'S009', 9),
  (10, 'S010', 10);

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE
  `teacher` (
    `id` varchar(20) NOT NULL,
    `first_name` varchar(50) NOT NULL,
    `last_name` varchar(50) NOT NULL,
    `contact_id` int (11) NOT NULL,
    `class_id` int (11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `contact_id` (`contact_id`),
    KEY `class_id` (`class_id`),
    CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`),
    CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

INSERT INTO
  `teacher` (
    `id`,
    `first_name`,
    `last_name`,
    `contact_id`,
    `class_id`
  )
VALUES
  ('T001', 'David', 'Wilson', 11, 1),
  ('T002', 'Jennifer', 'Anderson', 12, 2),
  ('T003', 'Christopher', 'Taylor', 13, 3),
  ('T004', 'Mary', 'Thomas', 14, 4),
  ('T005', 'Joseph', 'Hernandez', 15, 5),
  ('T006', 'Jessica', 'Young', 16, 6),
  ('T007', 'Richard', 'King', 17, 7),
  ('T008', 'Patricia', 'White', 18, 8),
  ('T009', 'John', 'Scott', 19, 9),
  ('T010', 'Linda', 'Green', 20, 10),
  ('T011', 'Fabian', 'Weiss', 14, 6),
  ('T012', 'Anika', 'Schwarz', 15, 7),
  ('T013', 'Stefan', 'Baumann', 26, 11),
  ('T014', 'Petra', 'Lang', 27, 12),
  ('T015', 'Urs', 'Meier', 28, 13);

DROP TABLE IF EXISTS `tutoring`;

CREATE TABLE
  `tutoring` (
    `id` int (11) NOT NULL AUTO_INCREMENT,
    `course_id` int (11) NOT NULL,
    `start_time` time NOT NULL,
    `end_time` time NOT NULL,
    `room_id` int (11) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `course_id` (`course_id`),
    KEY `room_id` (`room_id`),
    CONSTRAINT `tutoring_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE,
    CONSTRAINT `tutoring_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE SET NULL,
    CONSTRAINT `CONSTRAINT_1` CHECK (`start_time` < `end_time`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

INSERT INTO
  `tutoring` (
    `id`,
    `course_id`,
    `start_time`,
    `end_time`,
    `room_id`
  )
VALUES
  (1, 1, '14:00:00', '15:30:00', 1),
  (2, 2, '14:00:00', '15:30:00', 2),
  (3, 3, '14:00:00', '15:30:00', 3),
  (4, 4, '14:00:00', '15:30:00', 4),
  (5, 5, '14:00:00', '15:30:00', 5),
  (6, 6, '14:00:00', '15:30:00', 6),
  (7, 7, '14:00:00', '15:30:00', 7),
  (8, 8, '14:00:00', '15:30:00', 8),
  (9, 9, '14:00:00', '15:30:00', 9),
  (10, 10, '14:00:00', '15:30:00', 10),
  (11, 4, '17:00:00', '18:00:00', 4);