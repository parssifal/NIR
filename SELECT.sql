SelectAllFromUsers = `SELECT * FROM users;
`

SelectAllFromTask = `SELECT * FROM task;
`

SelectAllFromTestTask = `SELECT * FROM test_task;
`

SelectAllFromGroups = `SELECT * FROM groups;
`

SelectAllFromTeacher = `SELECT * FROM teacher;
`

SelectAllFromTeacherGroup = `SELECT * FROM teachergroup;
`

SelectAllFromStudent = `SELECT * FROM student;
`

SelectAllFromResult = `SELECT * FROM result;
`

SelectAllFromTest = `SELECT * FROM tests;
`

SelectAllFromGrade = `SELECT * FROM grade;
`

SelectAllAvailableTestsForUser = 
`SELECT tests.testsid, tests.test_name, tests.date_start, tests.date_end
FROM tests
`

SelectAllTasksInTest = 
`SELECT tests.test_name, tests.time, task.task_name, task.max_grade 
FROM tests
JOIN test_task ON test_task.testsid = tests.testsid
JOIN task ON test_task.taskid = task.taskid
WHERE tests.testsid = $1
GROUP BY tests.test_name, tests.time, task.task_name, task.max_grade;
`

SelectResultForStudent = 
`SELECT tests.test_name, result.time_start, result.time_end, result.sum_grade, grade.grade
FROM tests
JOIN result ON tests.testsid = result.testsid
JOIN student ON result.studentid = student.studentid
JOIN users ON student.usersid = users.usersid
JOIN grade ON result.resultid = grade.resultid
WHERE users.usersid = 1
GROUP BY test_name, result.time_start, result.time_end, result.sum_grade, grade.grade;
`

SelectDescription&GraphOfTask = 
`SELECT task.description, task.data
FROM task
WHERE task.taskid = $1;
`

SelectUserByEmail = 
`
SELECT usersid, role, first_name, last_name, email, father_name, password, date_registration
FROM users
WHERE users.email = $1; 
`
