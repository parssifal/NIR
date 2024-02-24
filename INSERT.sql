InsertIntoUsers = `INSERT INTO users (role, first_name, last_name, email, father_name, password, passwordsalt, date_registration)
VALUES ($1, $2, $3, $4, $5, $6, $7, $8);
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

InsertIntoTest = `INSERT INTO tests (test_name, date_start, time, date_end)
VALUES ($1, $2, $3, $4);
`

InsertIntoTeacher_Group = `INSERT INTO teachergroup (teacherid, groupsid)
VALUES ($1, $2);
`

InsertIntoResult = `INSERT INTO result (time_start, time_end, sum_grade, studentid, testsid)
VALUES ($1, $2, $3, $4, $5);
`

InsertIntoTask = `INSERT INTO task (task_name, answer, data, max_grade, description)
VALUES ($1, $2, $3, $4, $5);
`

InsertIntoTest_Task = `INSERT INTO test_task (testsid, taskid)
VALUES ($1, $2);
`
InsertIntoGrade = `INSERT INTO grade (grade, resultid)
VALUES ($1, $2);
`