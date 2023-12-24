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

SelectAllFromTeacherGroup = `SELECT * FROM teacher_group;
`

SelectAllFromStudent = `SELECT * FROM student;
`

SelectAllFromResult = `SELECT * FROM result;
`

SelectAllFromTest = `SELECT * FROM tests;
`

SelectAllAvailableTestsForUser = 
`SELECT tests.testsid, tests.test_name, tests.date_start, tests.date_end
FROM tests
`

SelectAllTasksInTest = 
`SELECT tests.test_name, tests.time, task.task_name, task.max_grade 
FROM tests
JOIN test_task ON test_task.taskid = tests.testsid
JOIN task ON test_task.taskid = task.taskid
GROUP BY test_name
WHERE tests.testsid = $1;
`

SelectResultForStudent = 
`SELECT tests.test_name, result.time_start, result.time_end, result.sum_grade, grade.grade
FROM tests
JOIN result ON tests.testsid = result.test_id
JOIN student ON result.studentid = student.studentidid
JOIN users ON student.usersid = users.usersid
JOIN grade ON result.resultid = grade.resultid
GROUP BY test_name
WHERE users.usersid = $1;
`

SelectDescription&GraphOfTask = 
`SELECT task.description, task.data
FROM task
WHERE task.taskid = $1;
`

SelectUserByEmail = 
`
SELECT *
FROM users
WHERE users.email = $1;
`
