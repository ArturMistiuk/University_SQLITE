SELECT subjects.id, subjects.name
FROM subjects
JOIN marks ON subjects.name = marks.subject_name
WHERE marks.student_id = 1 AND subjects.professor_id = 3;