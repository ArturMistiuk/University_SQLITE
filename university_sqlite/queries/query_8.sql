SELECT AVG(marks.mark) AS avg_mark, professors.name, professors.id
FROM professors
JOIN marks ON subject_name = subjects.name
JOIN subjects ON professor_id = professors.id
WHERE professors.id = 1;