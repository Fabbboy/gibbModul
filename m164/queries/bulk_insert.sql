-- Disable key constraints for mariadb
SET
  FOREIGN_KEY_CHECKS = 0;

INSERT INTO
  contact (phone, mail, corp_mail, role)
VALUES
  (
    '0791111111',
    'example1@example.com',
    'corp1@example.com',
    'student'
  ),
  (
    '0791111112',
    'example3@example.com',
    'corp3@example.com',
    'student'
  ),
  (
    '0791111113',
    'example5@example.com',
    'corp5@example.com',
    'student'
  ),
  (
    '0791111114',
    'example7@example.com',
    'corp7@example.com',
    'student'
  ),
  (
    '0791111115',
    'example9@example.com',
    'corp9@example.com',
    'student'
  ),
  (
    '0791111116',
    'example11@example.com',
    'corp11@example.com',
    'student'
  ),
  (
    '0791111117',
    'example13@example.com',
    'corp13@example.com',
    'student'
  ),
  (
    '0791111118',
    'example15@example.com',
    'corp15@example.com',
    'student'
  ),
  (
    '0791111119',
    'example17@example.com',
    'corp17@example.com',
    'student'
  ),
  (
    '0791111110',
    'example19@example.com',
    'corp19@example.com',
    'student'
  ),
  (
    '07911111121',
    'example2@example.com',
    'corp2@example.com',
    'teacher'
  ),
  (
    '0791111122',
    'example4@example.com',
    'corp4@example.com',
    'teacher'
  ),
  (
    '0791111123',
    'example6@example.com',
    'corp6@example.com',
    'teacher'
  ),
  (
    '0791111124',
    'example8@example.com',
    'corp8@example.com',
    'teacher'
  ),
  (
    '0791111125',
    'example10@example.com',
    'corp10@example.com',
    'teacher'
  ),
  (
    '0791111126',
    'example12@example.com',
    'corp12@example.com',
    'teacher'
  ),
  (
    '0791111127',
    'example14@example.com',
    'corp14@example.com',
    'teacher'
  ),
  (
    '0791111128',
    'example16@example.com',
    'corp16@example.com',
    'teacher'
  ),
  (
    '0791111129',
    'example18@example.com',
    'corp18@example.com',
    'teacher'
  ),
  (
    '0791111130',
    'example20@example.com',
    'corp20@example.com',
    'teacher'
  ),
  (
    '0792222345',
    'luca.flori@unifict.com',
    'luca.flori@techco.com',
    'student'
  ),
  (
    '0792345678',
    'eva.luna@brightmail.com',
    'eva.l@corpworld.com',
    'teacher'
  ),
  (
    '0799876543',
    'max.kern@insightnet.com',
    'mkern@innovatehq.com',
    'student'
  ),
  (
    '0798765432',
    'julia.graf@pioneers.io',
    'julia.g@visionaryarts.com',
    'teacher'
  ),
  (
    '0797654321',
    'simon.becher@eduverse.com',
    'simon.b@ecolight.org',
    'student'
  ),
  (
    '0793456789',
    'martin.zeller@adventures.io',
    'm.zeller@explorer.com',
    'teacher'
  ),
  (
    '0794567890',
    'anita.schmid@creatives.net',
    'a.schmid@artistsworld.com',
    'student'
  ),
  (
    '0795678901',
    'felix.jaeger@innovate.io',
    'f.jaeger@futuretech.com',
    'teacher'
  ),
  (
    '0796789012',
    'lisa.maier@visionaries.org',
    'l.maier@nextgen.com',
    'student'
  ),
  (
    '0797890123',
    'tom.muller@discoveries.com',
    't.muller@sciencehub.com',
    'teacher'
  );

INSERT INTO
  class (bm, type, grad_year, start_year)
VALUES
  (0, 'Informatics', 2025, 2022),
  (1, 'Electronics', 2025, 2022),
  (0, 'Mechanics', 2025, 2022),
  (1, 'Informatics', 2026, 2023),
  (0, 'Electronics', 2026, 2023),
  (1, 'Mechanics', 2026, 2023),
  (0, 'Informatics', 2027, 2024),
  (1, 'Electronics', 2027, 2024),
  (0, 'Mechanics', 2027, 2024),
  (1, 'Informatics', 2028, 2025),
  (1, 'Robotics', 2026, 2023),
  (0, 'Digital Arts', 2027, 2024),
  (1, 'Environmental Science', 2028, 2025),
  (0, 'Robotics', 2029, 2025),
  (1, 'Digital Arts', 2030, 2026),
  (0, 'Environmental Science', 2031, 2027);

INSERT INTO
  room (floor, number, building, capacity)
VALUES
  (1, 101, 'Main Building', 30),
  (2, 201, 'Main Building', 25),
  (1, 102, 'Science Building', 35),
  (2, 202, 'Science Building', 40),
  (1, 103, 'Engineering Building', 20),
  (2, 203, 'Engineering Building', 30),
  (1, 104, 'Arts Building', 25),
  (2, 204, 'Arts Building', 35),
  (1, 105, 'Library Building', 45),
  (2, 205, 'Library Building', 50),
  (3, 301, 'Innovation Hub', 30),
  (2, 210, 'Creative Center', 20),
  (1, 111, 'Tech Tower', 25),
  (1, 106, 'Innovation Center', 20),
  (2, 207, 'Design Hall', 25),
  (3, 308, 'Tech Lab', 30);

INSERT INTO
  student (
    id,
    first_name,
    last_name,
    born,
    stud_mail,
    contact_id,
    class_id
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

INSERT INTO
  teacher (id, first_name, last_name, contact_id, class_id)
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

INSERT INTO
  course (author_id, subject, number, hours)
VALUES
  ('T001', 'Computer Science', 101, 45),
  ('T002', 'Physics', 102, 50),
  ('T003', 'Mathematics', 103, 40),
  ('T004', 'English', 104, 35),
  ('T005', 'Biology', 105, 50),
  ('T006', 'Chemistry', 106, 45),
  ('T007', 'History', 107, 40),
  ('T008', 'Geography', 108, 35),
  ('T009', 'Art', 109, 50),
  ('T010', 'Music', 110, 45),
  ('T011', 'Robotics Fundamentals', 111, 60),
  ('T012', 'Sustainable Design', 112, 45),
  ('T013', 'Advanced Robotics', 113, 55),
  ('T014', 'Creative Coding', 114, 45),
  ('T015', 'Eco Design Principles', 115, 50);

INSERT INTO
  lesson (
    start_time,
    end_time,
    teacher_id,
    course_id,
    room_id,
    class_id
  )
VALUES
  ('08:00:00', '09:30:00', 'T001', 1, 1, 1),
  ('09:45:00', '11:15:00', 'T002', 2, 2, 2),
  ('11:30:00', '13:00:00', 'T003', 3, 3, 3),
  ('13:15:00', '14:45:00', 'T004', 4, 4, 4),
  ('15:00:00', '16:30:00', 'T005', 5, 5, 5),
  ('08:00:00', '09:30:00', 'T006', 6, 6, 6),
  ('09:45:00', '11:15:00', 'T007', 7, 7, 7),
  ('11:30:00', '13:00:00', 'T007', 8, 8, 8),
  ('13:15:00', '14:45:00', 'T009', 9, 9, 9),
  ('15:00:00', '16:30:00', 'T010', 10, 10, 10),
  ('10:00:00', '11:30:00', 'T011', 11, 11, 6),
  ('12:00:00', '13:30:00', 'T012', 12, 12, 7),
  ('09:00:00', '10:30:00', 'T013', 13, 11, 11),
  ('10:45:00', '12:15:00', 'T014', 14, 12, 12),
  ('13:00:00', '14:30:00', 'T014', 15, 13, 13);

INSERT INTO
  absence (date, hours, confirmed, lesson_id, student_id)
VALUES
  ('2024-03-24', 2, 1, 1, 'S001'),
  ('2024-03-25', 1, 0, 2, 'S002'),
  ('2024-03-26', 3, 0, 3, 'S003'),
  ('2024-03-27', 4, 1, 4, 'S004'),
  ('2024-03-28', 2, 1, 5, 'S005'),
  ('2024-03-29', 1, 0, 6, 'S006'),
  ('2024-03-30', 3, 1, 7, 'S007'),
  ('2024-03-31', 4, 1, 8, 'S008'),
  ('2024-04-01', 2, 0, 9, 'S009'),
  ('2024-04-02', 1, 1, 10, 'S010'),
  ('2024-04-03', 2, 0, 13, 'S014'),
  ('2024-04-04', 3, 1, 14, 'S015'),
  ('2024-04-05', 1, 1, 15, 'S016');

INSERT INTO
  schedule (notes, type, date, confirmed, room_id)
VALUES
  (
    'Regular class schedule',
    'regular',
    '2024-03-24',
    1,
    1
  ),
  (
    'Regular class schedule',
    'regular',
    '2024-03-25',
    1,
    2
  ),
  (
    'Regular class schedule',
    'regular',
    '2024-03-26',
    1,
    3
  ),
  (
    'Regular class schedule',
    'regular',
    '2024-03-27',
    1,
    4
  ),
  (
    'Regular class schedule',
    'regular',
    '2024-03-28',
    1,
    5
  ),
  (
    'Regular class schedule',
    'regular',
    '2024-03-29',
    1,
    6
  ),
  (
    'Regular class schedule',
    'regular',
    '2024-03-30',
    1,
    7
  ),
  (
    'Regular class schedule',
    'regular',
    '2024-03-31',
    1,
    8
  ),
  (
    'Regular class schedule',
    'regular',
    '2024-04-01',
    1,
    9
  ),
  (
    'Regular class schedule',
    'regular',
    '2024-04-02',
    1,
    10
  );

INSERT INTO lesson_schedule (lesson_id, schedule_id)
VALUES
  (11, 1), 
  (12, 2),
  (13, 3),
  (14, 4),
  (15, 5),
  (1, 6),  
  (2, 7),
  (3, 8),
  (4, 9),
  (5, 10),
  (6, 1), 
  (7, 2),
  (8, 3),
  (9, 4),
  (10, 5);


INSERT INTO
  tutoring (course_id, start_time, end_time, room_id)
VALUES
  (1, '14:00:00', '15:30:00', 1),
  (2, '14:00:00', '15:30:00', 2),
  (3, '14:00:00', '15:30:00', 3),
  (4, '14:00:00', '15:30:00', 4),
  (5, '14:00:00', '15:30:00', 5),
  (6, '14:00:00', '15:30:00', 6),
  (7, '14:00:00', '15:30:00', 7),
  (8, '14:00:00', '15:30:00', 8),
  (9, '14:00:00', '15:30:00', 9),
  (10, '14:00:00', '15:30:00', 10),
  (4, '17:00:00', '18:00:00', 4);

INSERT INTO
  students_tutoring (student_id, tutoring_id)
VALUES
  ('S001', 1),
  ('S002', 2),
  ('S003', 3),
  ('S004', 4),
  ('S005', 5),
  ('S006', 6),
  ('S007', 7),
  ('S008', 8),
  ('S009', 9),
  ('S010', 10);

-- Enable key constraints for mariadb
SET
  FOREIGN_KEY_CHECKS = 1;