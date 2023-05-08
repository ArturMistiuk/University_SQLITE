SELECT groups_of_students.id, groups_of_students.name, AVG(marks.mark) as avg_mark
FROM students
JOIN groups_of_students ON groups_of_students.id = students.group_id
JOIN marks ON students.id = marks.student_id
WHERE students.id IN (SELECT id FROM students WHERE group_id BETWEEN 1 AND 3) AND marks.subject_name = 'Tree surgeon'
GROUP BY groups_of_students.id, groups_of_students.name
ORDER BY avg_mark DESC;