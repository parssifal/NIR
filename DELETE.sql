DeleteFromResult = `delete from result
where resultid = $1;
`

DeleteFromTest_Task = `delete from test_task
where testtaskid = $1;
`

DeleteFromTask = `delete from task
where taskid = $1;
`

DeleteFromTeacher_Group = `delete from teachergroup
where teachergroupid = $1;
`

DeleteFromTeacher = `delete from teacher
where teacherid = $1;
`

DeleteFromTest = `delete from tests
where testsid = $1;
`

DeleteFromStudent = `delete from student
where studentid = $1;
`

DeleteFromGroups = `delete from groups
where groupsid = $1;
`

DeleteFromUsers = `delete from users
where usersid = $1; 
`