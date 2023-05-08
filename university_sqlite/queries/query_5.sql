SELECT subjects.name, professors.id, professors.name
FROM subjects
JOIN professors ON professors.id = subjects.professor_id
WHERE subjects.professor_id = 3;