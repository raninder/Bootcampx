SELECT cohorts.name as cohorts_name, count(students.*) as total_students
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY total_students;