DeleteFromResult = `DELETE FROM Result
WHERE resultid = $1;
`

DeleteFromTest_Task = `DELETE FROM test_task
WHERE test_taskid = $1;
`

DeleteFromTask = `DELETE FROM task
WHERE taskid = $1;
`

DeleteFromGroup_Module = `DELETE FROM group_module
WHERE group_moduleid = $1;
`

DeleteFromTeacher_Group = `DELETE FROM teacher_group
WHERE teacher_groupid = $1;
`

DeleteFromTeacher = `DELETE FROM teacher
WHERE teacherid = $1;
`

DeleteFromTest = `DELETE FROM test
WHERE testid = $1;
`

DeleteFromStudent = `DELETE FROM student
WHERE studentid = $1;
`

DeleteFromGroups = `DELETE FROM groups
WHERE groupsid = $1;
`

DeleteFromModule = `DELETE FROM module
WHERE moduleid = $1;
`

DeleteFromUsers = `DELETE FROM users
WHERE usersid = $1; 
`