const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});
//sql injection safety implemented
const cohortName = process.argv[2]||'JUL02';
pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = $1
ORDER BY teacher;`,[cohortName]
)
.then(res => {
  //console.log(res.rows);
	res.rows.forEach(res => {
    console.log(`${res.cohort}: ${res.teacher}`);
  })
})
.catch(err => console.error('query error', err.stack));