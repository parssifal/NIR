SelectAllFromUsers = `select * from users;
`

SelectAllFromTask = `select * from task;
`

SelectAllFromTestTask = `select * from test_task;
`

SelectAllFromGroups = `select * from groups;
`

SelectAllFromTeacher = `select * from teacher;
`

SelectAllFromTeacherGroup = `select * from teachergroup;
`

SelectAllFromStudent = `select * from student;
`

SelectAllFromResult = `select * from result;
`

SelectAllFromTest = `select * from tests;
`

SelectAllFromGrade = `select * from grade;
`

SelectAllAvailableTestsForUser = 
`select tests.testsid, tests.test_name, tests.date_start, tests.date_end
from tests
`

SelectAllTasksInTest = 
`select tests.test_name, tests.time, task.task_name, task.max_grade 
from tests
join test_task on test_task.testsid = tests.testsid
join task on test_task.taskid = task.taskid
where tests.testsid = $1
group by tests.test_name, tests.time, task.task_name, task.max_grade;
`

SelectResultForStudent = 
`select tests.test_name, result.time_start, result.time_end, result.sum_grade, grade.grade
from tests
join result on tests.testsid = result.testsid
join student on result.studentid = student.studentid
join users on student.usersid = users.usersid
join grade on result.resultid = grade.resultid
where users.usersid = 1
group by test_name, result.time_start, result.time_end, result.sum_grade, grade.grade;
`

SelectDescription&GraphOfTask = 
`select task.description, task.data
from task
where task.taskid = $1;
`

SelectUserByEmail = 
`select usersid, role, first_name, last_name, email, father_name, password, date_registration
from users
where users.email = $1; 
`
