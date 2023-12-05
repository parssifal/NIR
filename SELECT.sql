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
`SELECT tests.test_name, tests.time, task.task_name, task.grade 
FROM tests
JOIN test_task ON test_task.taskid = tests.testsid
JOIN task ON test_task.taskid = task.taskid
GROUP BY test_name
WHERE tests.testsid = $1;
`

SelectResultForStudent = 
`SELECT tests.test_name, result.time_start, result.time_end, result.sum_grade
FROM tests
JOIN result ON tests.testsid = result.test_id
JOIN student ON result.studentid = student.studentidid
JOIN users ON student.usersid = users.usersid
WHERE users.usersid = $1;
`

SelectDescription&GraphOfTask = 
`SELECT task.description, task.data
FROM task
WHERE task.taskid = $1;
`

-- SelectNameAndGroupOfStudent = `SELECT student.studentid, users.first_name, users.last_name, groups.groupsid
-- FROM student
-- JOIN users ON student.usersid = users.usersid
-- JOIN groups ON student.groupsid = groups.groupsid;
-- `

-- SelectNameAndGrade = `SELECT users.first_name, users.last_name, test.date_start, result.sum_grade
-- FROM student
-- JOIN users ON student.usersid = users.usersid
-- JOIN result ON student.studentid = result.studentid
-- JOIN test ON result.testid = test.testid;
-- `

-- SELECT Users.First_Name, Users.Last_Name, Groups.GroupsID
-- FROM Teacher
-- JOIN Users ON Teacher.UsersID = Users.UsersID
-- JOIN Teacher_Group ON Teacher.TeacherID = Teacher_Group.TeacherID
-- JOIN Groups ON Teacher_Group.GroupsID = Groups.GroupsID;

-- SELECT Module.Module_Name, Task.Task_Name
-- FROM Module
-- JOIN Task ON Module.ModuleID = Task.ModuleID;

-- SELECT Users.First_Name, Users.Last_Name
-- FROM Student
-- JOIN Users ON Student.UsersID = Users.UsersID
-- WHERE Student.GroupsID = 1; -- Предполагается, что идентификатор группы 1

-- SELECT Test.TestID, Test.Date_start, Task.Task_Name
-- FROM Test
-- JOIN Test_Task ON Test.TestID = Test_Task.TestID
-- JOIN Task ON Test_Task.TaskID = Task.TaskID
-- WHERE Task.ModuleID = 1; -- Предполагается, что идентификатор модуля 1

-- SELECT Users.First_Name, Users.Last_Name, SUM(Result.Sum_grade) AS TotalGrade
-- FROM Student
-- JOIN Users ON Student.UsersID = Users.UsersID
-- JOIN Result ON Student.StudentID = Result.StudentID
-- GROUP BY Users.First_Name, Users.Last_Name;

-- SELECT Users.First_Name, Users.Last_Name
-- FROM Teacher
-- RIGHT JOIN Users ON Teacher.UsersID = Users.UsersID
-- WHERE Teacher.TeacherID IS NULL;

-- SELECT TestID, Date_start
-- FROM Test
-- WHERE Date_end > CURRENT_DATE;

-- SELECT Users.First_Name, Users.Last_Name, Result.Sum_grade
-- FROM Result
-- JOIN Student ON Result.StudentID = Student.StudentID
-- JOIN Users ON Student.UsersID = Users.UsersID
-- WHERE Result.TestID = 1; -- Предполагается, что идентификатор теста 1

-- SELECT Groups.GroupsID, COUNT(Student.StudentID) AS StudentCount
-- FROM Groups
-- LEFT JOIN Student ON Groups.GroupsID = Student.GroupsID
-- GROUP BY Groups.GroupsID
-- HAVING COUNT(Student.StudentID) > 5;
