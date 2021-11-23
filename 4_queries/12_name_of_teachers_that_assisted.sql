SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;



-- SELECT DISTINCT teachers.name as teachers,cohorts.name as cohort 
-- FROM cohorts
-- JOIN students ON cohorts.id = cohort_id
-- JOIN assistance_requests ON students.id = student_id
-- JOIN teachers ON teachers.id = teacher_id
-- GROUP BY cohorts.name, teachers.name
-- HAVING cohorts.name = 'JUL02'
-- ORDER BY teachers.name



