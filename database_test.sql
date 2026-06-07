-- 1. Create the tables
CREATE TABLE course (
    id INTEGER PRIMARY KEY,
    course_name TEXT,
    instructure TEXT
);

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    course_id INTEGER,
    age INTEGER,
    FOREIGN KEY(course_id) REFERENCES course(id)
);

-- 2. Insert some mock data to test with
INSERT INTO course (id, course_name, instructure) VALUES 
(1, 'fullstack development', 'John Doe'),
(2, 'data science', 'Jane Smith'),
(3, 'ui/ux design', 'Old Instructor');

INSERT INTO students (id, name, course_id, age) VALUES 
(1, 'Alice', 1, 20),
(2, 'Bob', 1, 22),
(3, 'Charlie', 2, 21),
(4, 'David', 3, 23);

-- 3. Setup nice formatting for the output
.headers on
.mode column

-- 4. Run your queries!
.print '----------------------------------------------------------'
.print '--- Query 1: List all students with their course name ---'
.print '----------------------------------------------------------'
SELECT students.name, course.course_name
FROM students
JOIN course ON students.course_id = course.id;
.print ''

.print '----------------------------------------------------------'
.print '--- Query 2: Count students in fullstack development ---'
.print '----------------------------------------------------------'
SELECT COUNT(students.id) AS enrolled_students
FROM students
JOIN course ON students.course_id = course.id
WHERE course.course_name = 'fullstack development';
.print ''

.print '----------------------------------------------------------'
.print '--- Query 3: Update instructor for course_id = 3 --------'
.print '----------------------------------------------------------'
UPDATE course SET instructure = 'Ram Sharma' WHERE id = 3;

-- Verify the update was successful
SELECT id, course_name, instructure as new_instructure FROM course WHERE id = 3;
