-- Retrieves a list of teachers involved in tutoring along with the subjects they teach and the timing of the tutoring sessions.
SELECT
  teacher.first_name,
  teacher.last_name,
  course.subject,
  tutoring.start_time,
  tutoring.end_time
FROM
  teacher
  JOIN course ON teacher.id = course.author_id
  JOIN lesson ON teacher.id = lesson.teacher_id
  JOIN tutoring ON course.id = tutoring.course_id;

-- Selects teachers who are not assigned to any tutoring sessions.
SELECT
  teacher.first_name,
  teacher.last_name
FROM
  teacher
  LEFT JOIN course ON teacher.id = course.author_id
  LEFT JOIN lesson ON teacher.id = lesson.teacher_id
  LEFT JOIN tutoring ON course.id = tutoring.course_id
WHERE
  tutoring.id IS NULL;

-- Finds all students with unconfirmed absences, including details about the absence.
SELECT
  student.first_name,
  student.last_name,
  absence.date,
  absence.hours
FROM
  student
  JOIN absence ON student.id = absence.student_id
  JOIN lesson ON absence.lesson_id = lesson.id
WHERE
  absence.confirmed = 0;

-- Deletes tutoring sessions that do not have any students enrolled.
DELETE FROM tutoring
WHERE
  tutoring.id NOT IN (
    SELECT
      tutoring_id
    FROM
      students_tutoring
  );

-- Lists rooms ordered by capacity from largest to smallest.
SELECT
  building,
  number,
  capacity
FROM
  room
ORDER BY
  capacity DESC;

-- Counts the number of lessons and calculates the total hours of lessons in each room.
SELECT
  room_id,
  COUNT(*) AS number_of_lessons,
  SUM(TIMESTAMPDIFF (HOUR, start_time, end_time)) AS total_hours
FROM
  lesson
GROUP BY
  room_id;

-- Associates courses with their respective class types.
SELECT
  course.subject,
  class.type
FROM
  course
  JOIN teacher ON course.author_id = teacher.id
  JOIN class ON teacher.class_id = class.id;

-- Gathers contact information for all students.
SELECT
  student.first_name,
  student.last_name,
  contact.phone,
  contact.mail,
  contact.corp_mail
FROM
  student
  JOIN contact ON student.contact_id = contact.id
WHERE
  contact.role = 'student';

-- Counts the number of students in each class type.
SELECT
  class.type,
  COUNT(student.id) AS total_students
FROM
  class
  JOIN student ON class.id = student.class_id
GROUP BY
  class.type;

-- Selects details of confirmed schedules, including the location and notes about the schedule.
SELECT
  room.building,
  room.number,
  schedule.date,
  schedule.type,
  schedule.notes
FROM
  schedule
  JOIN room ON schedule.room_id = room.id
WHERE
  schedule.confirmed = 1;

-- Calculates the total number of absences per class type.
SELECT
  class.type,
  COUNT(absence.id) AS absences_count
FROM
  absence
  JOIN lesson ON absence.lesson_id = lesson.id
  JOIN class ON lesson.class_id = class.id
GROUP BY
  class.type;