InsertIntoUsers = `insert into users (role, first_name, last_name, email, father_name, password, passwordsalt, date_registration)
values ($1, $2, $3, $4, $5, $6, $7, $8);
`

InsertIntoTeacher = `insert into teacher (usersid)
values ($1);
`

InsertIntoGroups = `insert into groups (groupsname)
values ($1);
`

InsertIntoStudent = `insert into student (usersid, groupsid)
values ($1, $2);
`

InsertIntoTest = `insert into tests (test_name, date_start, time, date_end)
values ($1, $2, $3, $4);
`

InsertIntoTeacher_Group = `insert into teachergroup (teacherid, groupsid)
values ($1, $2);
`

InsertIntoResult = `insert into result (time_start, time_end, sum_grade, studentid, testsid)
values ($1, $2, $3, $4, $5);
`

InsertIntoTask = `insert into task (task_name, answer, data, max_grade, description)
values ($1, $2, $3, $4, $5);
`

InsertIntoTest_Task = `insert into test_task (testsid, taskid)
values ($1, $2);
`
InsertIntoGrade = `insert into grade (grade, resultid)
values ($1, $2);
`