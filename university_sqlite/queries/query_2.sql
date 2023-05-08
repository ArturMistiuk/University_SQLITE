SELECT student_id, students.name, subject_name, AVG(mark) as avg_mark
FROM marks
JOIN students ON students.id = student_id
WHERE subject_name = 'Tree surgeon'
GROUP BY student_id, students.name
ORDER BY avg_mark DESC
LIMIT 1;