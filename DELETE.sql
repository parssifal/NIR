DeleteFromResult = `DELETE FROM result
WHERE resultid = $1;
`

DeleteFromTest_Task = `DELETE FROM test_task
WHERE test_taskid = $1;
`

DeleteFromTask = `DELETE FROM task
WHERE taskid = $1;
`

DeleteFromTeacher_Group = `DELETE FROM teacher_group
WHERE teacher_groupid = $1;
`

DeleteFromTeacher = `DELETE FROM teacher
WHERE teacherid = $1;
`

DeleteFromTest = `DELETE FROM tests
WHERE testsid = $1;
`

DeleteFromStudent = `DELETE FROM student
WHERE studentid = $1;
`

DeleteFromGroups = `DELETE FROM groups
WHERE groupsid = $1;
`

DeleteFromUsers = `DELETE FROM users
WHERE usersid = $1; 
`