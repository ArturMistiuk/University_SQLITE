DROP TABLE IF EXISTS students;
CREATE TABLE students(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL,
    group_id INT,
    FOREIGN KEY (group_id) REFERENCES groups_of_students(id)
);

DROP TABLE IF EXISTS professors;
CREATE TABLE professors(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(255) UNIQUE
);

DROP TABLE IF EXISTS subjects;
CREATE TABLE subjects(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL,
    professor_id INT,
    FOREIGN KEY (professor_id) REFERENCES professors(id)
);

DROP TABLE IF EXISTS groups_of_students;
CREATE TABLE groups_of_students(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS marks;
CREATE TABLE marks(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER,
    subject_name VARCHAR(50),
    mark INTEGER(3) NOT NULL,
    mark_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (subject_name) REFERENCES subjects(name)
);