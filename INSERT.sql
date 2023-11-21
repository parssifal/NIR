InsertIntoUsers = `INSERT INTO users (role, first_name, last_name, email, father_name, password, passwordsalt, date_registration)
VALUES ($1, $2, $3, $4, $5, $6, $7, $8);
`

InsertIntoModule = `INSERT INTO module (module_name, description, version)
VALUES ($1, $2, $3);
`

InsertIntoTeacher = `INSERT INTO teacher (usersid)
VALUES ($1);
`

InsertIntoGroups = `INSERT INTO groups (groupsname)
VALUES ($1);
`

InsertIntoStudent = `INSERT INTO student (usersid, groupsid)
VALUES ($1, $2);
`

InsertIntoTest = `INSERT INTO test (date_start, time, date_end)
VALUES ($1, $2, $3);
`

InsertIntoTeacher_Group = `INSERT INTO teacher_group (teacherid, groupsid)
VALUES ($1, $2);
`

InsertIntoResult = `INSERT INTO result (time_start, time_end, sum_grade, studentid, testid)
VALUES ($1, $2, $3, $4, $5);
`

InsertIntoGroup_Module = `INSERT INTO group_module (groupsid, testid)
VALUES ($1, $2);
`
InsertIntoTask = `INSERT INTO task (task_name, answer, data, grade, moduleid)
VALUES ($1, $2, $3, $4, $5);
`

InsertIntoTest_Task = `INSERT INTO test_task (testid, taskid)
VALUES ($1, $2);
`