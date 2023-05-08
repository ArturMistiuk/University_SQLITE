SELECT students.id, students.name, marks.mark, marks.subject_name
FROM students
JOIN marks ON students.id = marks.student_id
WHERE students.group_id = 1 AND marks.subject_name = 'Tree surgeon';