UpdateUsers = `update users
set role = $1, first_name = $2, last_name = $3, email = $4, father_name = $5, password = $6
where usersid = $7; 
`

UpdateUsersRole = `update users
set role = $1
where usersid = $2; 
`

UpdateUsersFirstName = `update users
set first_name = $1
where usersid = $2;
`

UpdateUsersLastName = `update users
set last_name = $1
where usersid = $2;
`

UpdateUsersEmail = `update users
set email = $1
where usersid = $2;
`

UpdateUsersFatherName = `update users
set father_name = $1
where usersid = $2;
`

UpdateUsersPassword = `update users
set password = $1
where usersid = $2;
`

UpdateGroups = `update groups
set groupsname = $1
where groupsid = $2;
`

UpdateTest = `update tests
set test_name = $1, date_start = $2, time = $3, date_end = $4
where testsid = $5;
`

UpdateTestDateStart = `update tests
set date_start = $1
where testsid = $2;
`

UpdateTestTime = `update tests
set time = $1
where testsid = $2;
`

UpdateTestDateEnd = `update tests
set date_end = $1
where testsid = $2;
`

UpdateTestTestName = `update tests
set test_name = $1
where testsid = $2;
`

UpdateResult = `update result
set time_start = $1, time_end = $2, sum_grade = $3, studentid = $4, testsid = $5
where resultid = $6;
`

UpdateResultTimeStart = `update result
set time_start = $1
where resultid = $2;
`

UpdateResultTimeEnd = `update result
set time_end = $1
where resultid = $2;
`

UpdateResultSumgrade = `update result
set sum_grade = $1
where resultid = $2;
`

UpdateResultStudentId = `update result
set studentid = $1
where resultid = $2;
`

UpdateResultTestsId = `update result
set testsid = $1
where resultid = $2;
`

UpdateTask = `update task
set task_name = $1, answer = $2, data = $3, max_grade = $4, description = $5
where taskid = $6;
`

UpdateTaskName = `update task
set task_name = $1
where taskid = $2;
`

UpdateTaskAnswer = `update task
set answer = $1
where taskid = $2;
`

UpdateTaskData = `update task
set data = $1
where taskid = $2;
`

UpdateTaskGrade = `update task
set max_grade = $1
where taskid = $2;
`

UpdateTaskDescription = `update task
set description = $1
where taskid = $2;
`
UpdateTestTask = `update test_task
set testsid = $1, taskid = $2
where testtaskid = $3;
`

UpdateTestTaskTestId = `update test_task
set testsid = $1
where testtaskid = $2;
`

UpdateTestTaskTaskId = `update test_task
set taskid = $1
where testtaskid = $2;
`
UpgradeGrade = `update grade
set grade = $1, resultid = $2
where gradeid = $3;
`
UpgradeGradeGrade = `update grade
set grade = $1
where gradeid = $2;
`

UpgradeGradeResultId = `update grade
set resultid = $1
where gradeid = $2;
`