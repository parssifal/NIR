UpdateUsers = `UPDATE users
SET role = $1, first_name = $2, last_name = $3, email = $4, father_name = $5, password = $6
WHERE usersid = $7; 
`

UpdateUsersRole = `UPDATE users
SET role = $1
WHERE usersid = $2; 
`

UpdateUsersFirstName = `UPDATE users
SET first_name = $1
WHERE usersid = $2;
`

UpdateUsersLastName = `UPDATE users
SET last_name = $1
WHERE usersid = $2;
`

UpdateUsersEmail = `UPDATE users
SET email = $1
WHERE usersid = $2;
`

UpdateUsersFatherName = `UPDATE users
SET father_name = $1
WHERE usersid = $2;
`

UpdateUsersPassword = `UPDATE users
SET password = $1
WHERE usersid = $2;
`

UpdateGroups = `UPDATE groups
SET groupname = $1
WHERE groupsid = $2
`

UpdateTest = `UPDATE tests
SET test_name = $1, date_start = $2, time = $3, date_end = $4
WHERE testid = $5;
`

UpdateTestDateStart = `UPDATE tests
SET date_start = $1
WHERE testid = $2;
`

UpdateTestTime = `UPDATE tests
SET time = $1
WHERE testid = $2;
`

UpdateTestDateEnd = `UPDATE tests
SET date_end = $1
WHERE testid = $2;
`

UpdateResult = `UPDATE result
SET time_start = $1, time_end = $2, sum_grade = $3
WHERE resultid = $4;
`

UpdateResultTimeStart = `UPDATE result
SET time_start = $1
WHERE resultid = $2;
`

UpdateResultTimeEnd = `UPDATE result
SET time_end = $1
WHERE resultid = $2;
`

UpdateResultSumgrade = `UPDATE result
SET sum_grade = $1
WHERE resultid = $2;
`

UpdateTask = `UPDATE task
SET task_name = $1, answer = $2, data = $3, grade = $4
WHERE taskid = $5;
`

UpdateTaskName = `UPDATE task
SET task_name = $1
WHERE taskid = $2;
`

UpdateTaskAnswer = `UPDATE task
SET answer = $1
WHERE taskid = $2;
`

UpdateTaskData = `UPDATE task
SET data = $1
WHERE taskid = $2;
`

UpdateTaskGrade =` UPDATE task
SET grade = $1
WHERE taskid = $2;
`