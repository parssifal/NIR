SelectAllFromUsers = `SELECT * FROM users;
`

SelectAllFromModule = `SELECT * FROM  module;
`

SelectAllFromGroupModule = `SELECT * FROM group_module;
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

SelectAllFromTest = `SELECT * FROM test;
`

SelectNameAndGroupOfStudent = `SELECT student.studentid, users.first_name, users.last_name, groups.groupsid
FROM student
JOIN users ON student.usersid = users.usersid
JOIN groups ON student.groupsid = groups.groupsid;
`

SELECT task.task_name, test.date_start, test.date_end
FROM task 
JOIN test_task ON task.taskid = test_task.taskid
JOIN test ON test_task.testid = test.testid
JOIN 
WHERE users.first_name = $1 and users.last_name and 

SELECT Test.TestID, Test.Date_start, Task.TaskID, Task.Task_Name
FROM Test
JOIN Test_Task ON Test.TestID = Test_Task.TestID
JOIN Task ON Test_Task.TaskID = Task.TaskID;

SelectNameAndGrade = `SELECT users.first_name, users.last_name, test.date_start, result.sum_grade
FROM student
JOIN users ON student.usersid = users.usersid
JOIN result ON student.studentid = result.studentid
JOIN test ON result.testid = test.testid;
`

SELECT Users.First_Name, Users.Last_Name, Groups.GroupsID
FROM Teacher
JOIN Users ON Teacher.UsersID = Users.UsersID
JOIN Teacher_Group ON Teacher.TeacherID = Teacher_Group.TeacherID
JOIN Groups ON Teacher_Group.GroupsID = Groups.GroupsID;

SELECT Module.Module_Name, Task.Task_Name
FROM Module
JOIN Task ON Module.ModuleID = Task.ModuleID;

SELECT Users.First_Name, Users.Last_Name
FROM Student
JOIN Users ON Student.UsersID = Users.UsersID
WHERE Student.GroupsID = 1; -- Предполагается, что идентификатор группы 1

SELECT Test.TestID, Test.Date_start, Task.Task_Name
FROM Test
JOIN Test_Task ON Test.TestID = Test_Task.TestID
JOIN Task ON Test_Task.TaskID = Task.TaskID
WHERE Task.ModuleID = 1; -- Предполагается, что идентификатор модуля 1

SELECT Users.First_Name, Users.Last_Name, SUM(Result.Sum_grade) AS TotalGrade
FROM Student
JOIN Users ON Student.UsersID = Users.UsersID
JOIN Result ON Student.StudentID = Result.StudentID
GROUP BY Users.First_Name, Users.Last_Name;

SELECT Users.First_Name, Users.Last_Name
FROM Teacher
RIGHT JOIN Users ON Teacher.UsersID = Users.UsersID
WHERE Teacher.TeacherID IS NULL;

SELECT TestID, Date_start
FROM Test
WHERE Date_end > CURRENT_DATE;

SELECT Users.First_Name, Users.Last_Name, Result.Sum_grade
FROM Result
JOIN Student ON Result.StudentID = Student.StudentID
JOIN Users ON Student.UsersID = Users.UsersID
WHERE Result.TestID = 1; -- Предполагается, что идентификатор теста 1

SELECT Groups.GroupsID, COUNT(Student.StudentID) AS StudentCount
FROM Groups
LEFT JOIN Student ON Groups.GroupsID = Student.GroupsID
GROUP BY Groups.GroupsID
HAVING COUNT(Student.StudentID) > 5;
