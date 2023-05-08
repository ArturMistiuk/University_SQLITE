SELECT marks.student_id, students.name, AVG(marks.mark) as avg_mark
FROM marks
JOIN students ON students.id = marks.student_id
GROUP BY marks.student_id, students.name
ORDER BY avg_mark DESC
LIMIT 5;