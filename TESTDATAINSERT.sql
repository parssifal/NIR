insert into users (role, first_name, last_name, email, father_name, password, passwordsalt, date_registration) values ('Elfrieda', 'Kelley', 'Lawrey', 'rlawrey0@theglobeandmail.com', 'Roddy', 'aY4\,flI', 'qu', '2023-05-27');
insert into users (role, first_name, last_name, email, father_name, password, passwordsalt, date_registration) values ('Danny', 'Godard', 'Micklewicz', 'smicklewicz1@constantcontact.com', 'Salomon', 'mN9*@u80m1kbW~', 'ac', '2023-04-16');
insert into users (role, first_name, last_name, email, father_name, password, passwordsalt, date_registration) values ('Caz', 'Agna', 'Kinnear', 'ckinnear2@nbcnews.com', 'Cameron', 'aK0,_$Ho_IgBzj', 'ac', '2023-05-25');
insert into users (role, first_name, last_name, email, father_name, password, passwordsalt, date_registration) values ('Helaine', 'Genevieve', 'Becket', 'abecket3@instagram.com', 'Ambrosio', 'wV3~8sBbf', 'ma', '2023-04-14');
insert into users (role, first_name, last_name, email, father_name, password, passwordsalt, date_registration) values ('Maribeth', 'Aron', 'Faulder', 'sfaulder4@intel.com', 'Sylvan', 'sN4\!FmblA$1.+~O', 'cr', '2023-04-28');
insert into users (role, first_name, last_name, email, father_name, password, passwordsalt, date_registration) values ('Nellie', 'Timi', 'Lethieulier', 'alethieulier5@wired.com', 'Angelo', 'cN6@=$Sv', 'cu', '2023-10-19');
insert into users (role, first_name, last_name, email, father_name, password, passwordsalt, date_registration) values ('Natalya', 'Moyna', 'Wilse', 'dwilse6@mit.edu', 'Dayna', 'vL2(}%MQMN@A', 'ma', '2023-11-19');
insert into users (role, first_name, last_name, email, father_name, password, passwordsalt, date_registration) values ('Maxie', 'Elana', 'Comins', 'acomins7@sbwire.com', 'Alverta', 'yH8$ZAik.', 'qi', '2023-11-05');
insert into users (role, first_name, last_name, email, father_name, password, passwordsalt, date_registration) values ('Katleen', 'Cobb', 'Ianittello', 'cianittello8@wikia.com', 'Cariotta', 'hT6`4$@CV,7lQ+_', 'ut', '2023-03-24');
insert into users (role, first_name, last_name, email, father_name, password, passwordsalt, date_registration) values ('Kelwin', 'Tom', 'Klimontovich', 'gklimontovich9@comcast.net', 'Gordon', 'dL8*D`c0A1k~ts*<', 'ul', '2023-05-23');

insert into teacher (usersid) values (7);
insert into teacher (usersid) values (3);
insert into teacher (usersid) values (9);
insert into teacher (usersid) values (6);
insert into teacher (usersid) values (3);
insert into teacher (usersid) values (4);
insert into teacher (usersid) values (2);
insert into teacher (usersid) values (7);
insert into teacher (usersid) values (9);
insert into teacher (usersid) values (2);

insert into groups (groupsname) values ('cons');
insert into groups (groupsname) values ('quis');
insert into groups (groupsname) values ('pede');
insert into groups (groupsname) values ('id');
insert into groups (groupsname) values ('sapien');
insert into groups (groupsname) values ('sed');
insert into groups (groupsname) values ('rhoncus');
insert into groups (groupsname) values ('in');
insert into groups (groupsname) values ('eu');
insert into groups (groupsname) values ('proin');

insert into student (usersid, groupsid) values (6, 2);
insert into student (usersid, groupsid) values (6, 9);
insert into student (usersid, groupsid) values (8, 5);
insert into student (usersid, groupsid) values (7, 4);
insert into student (usersid, groupsid) values (10, 10);
insert into student (usersid, groupsid) values (7, 10);
insert into student (usersid, groupsid) values (7, 5);
insert into student (usersid, groupsid) values (1, 8);
insert into student (usersid, groupsid) values (8, 1);
insert into student (usersid, groupsid) values (7, 2);

insert into tests (test_name, date_start, time, date_end) values ('Jessie', '2023-11-20', '4:11:46', '2023-03-30');
insert into tests (test_name, date_start, time, date_end) values ('Debbi', '2024-02-18', '14:49:29', '2023-08-12');
insert into tests (test_name, date_start, time, date_end) values ('Jennette', '2023-10-13', '11:37:28', '2024-01-19');
insert into tests (test_name, date_start, time, date_end) values ('Quill', '2023-11-09', '7:35:52', '2023-05-11');
insert into tests (test_name, date_start, time, date_end) values ('Arturo', '2023-02-24', '6:33:14', '2023-03-27');
insert into tests (test_name, date_start, time, date_end) values ('Herrick', '2024-01-30', '13:41:54', '2023-09-19');
insert into tests (test_name, date_start, time, date_end) values ('Shirl', '2023-08-18', '13:53:33', '2023-10-03');
insert into tests (test_name, date_start, time, date_end) values ('Robinette', '2023-05-21', '17:31:08', '2024-01-23');
insert into tests (test_name, date_start, time, date_end) values ('Kris', '2023-12-16', '19:39:29', '2024-01-17');
insert into tests (test_name, date_start, time, date_end) values ('Shelby', '2023-05-24', '14:30:26', '2023-05-15');

insert into teachergroup (teacherid, groupsid) values (5, 8);
insert into teachergroup (teacherid, groupsid) values (4, 6);
insert into teachergroup (teacherid, groupsid) values (2, 8);
insert into teachergroup (teacherid, groupsid) values (6, 7);
insert into teachergroup (teacherid, groupsid) values (1, 6);
insert into teachergroup (teacherid, groupsid) values (7, 9);
insert into teachergroup (teacherid, groupsid) values (9, 9);
insert into teachergroup (teacherid, groupsid) values (6, 3);
insert into teachergroup (teacherid, groupsid) values (5, 2);
insert into teachergroup (teacherid, groupsid) values (5, 6);

insert into result (time_start, time_end, sum_grade, studentid, testsid) values ('2023-04-02 18:26:43', '2023-07-10 05:38:24', 46, 8, 8);
insert into result (time_start, time_end, sum_grade, studentid, testsid) values ('2023-06-06 21:07:28', '2023-07-13 05:56:10', 14, 6, 1);
insert into result (time_start, time_end, sum_grade, studentid, testsid) values ('2023-06-22 23:33:32', '2023-11-16 07:56:00', 27, 5, 4);
insert into result (time_start, time_end, sum_grade, studentid, testsid) values ('2023-10-31 23:23:51', '2023-09-24 16:19:25', 67, 2, 5);
insert into result (time_start, time_end, sum_grade, studentid, testsid) values ('2024-01-27 05:15:39', '2023-08-28 21:28:38', 9, 3, 10);
insert into result (time_start, time_end, sum_grade, studentid, testsid) values ('2023-04-19 11:17:10', '2023-07-01 18:17:49', 66, 9, 5);
insert into result (time_start, time_end, sum_grade, studentid, testsid) values ('2023-11-08 03:21:09', '2023-02-28 10:01:30', 62, 3, 6);
insert into result (time_start, time_end, sum_grade, studentid, testsid) values ('2023-07-28 19:48:56', '2023-07-29 05:34:54', 56, 5, 10);
insert into result (time_start, time_end, sum_grade, studentid, testsid) values ('2023-09-30 13:02:17', '2023-03-20 16:08:50', 36, 4, 4);
insert into result (time_start, time_end, sum_grade, studentid, testsid) values ('2023-03-15 07:39:01', '2024-01-22 08:15:36', 16, 3, 5);

insert into task (task_name, answer, data, max_grade, description) values ('Humfried', '[{},{}]', '[{},{},{},{},{}]', 82, 'curabitur gravida nisi');
insert into task (task_name, answer, data, max_grade, description) values ('Hermine', '[{},{},{},{},{}]', '[{},{},{}]', 17, 'quis orci eget');
insert into task (task_name, answer, data, max_grade, description) values ('Ardine', '[{},{},{}]', '[{},{},{},{}]', 5, 'nunc donec quis');
insert into task (task_name, answer, data, max_grade, description) values ('Lanna', '[]', '[{},{},{},{}]', 97, 'nulla ultrices aliquet');
insert into task (task_name, answer, data, max_grade, description) values ('Kenton', '[{},{},{},{}]', '[]', 58, 'neque');
insert into task (task_name, answer, data, max_grade, description) values ('Doreen', '[{},{}]', '[{},{},{},{},{}]', 84, 'mollis molestie lorem');
insert into task (task_name, answer, data, max_grade, description) values ('Gard', '[{},{},{},{}]', '[{},{},{},{}]', 22, 'convallis');
insert into task (task_name, answer, data, max_grade, description) values ('Merissa', '[{}]', '[]', 29, 'ut');
insert into task (task_name, answer, data, max_grade, description) values ('Florrie', '[{},{}]', '[{}]', 12, 'interdum mauris non');
insert into task (task_name, answer, data, max_grade, description) values ('Freddy', '[]', '[{},{},{},{},{}]', 47, 'justo');

insert into test_task (testsid, taskid) values (6, 7);
insert into test_task (testsid, taskid) values (1, 9);
insert into test_task (testsid, taskid) values (1, 6);
insert into test_task (testsid, taskid) values (5, 4);
insert into test_task (testsid, taskid) values (6, 1);
insert into test_task (testsid, taskid) values (7, 10);
insert into test_task (testsid, taskid) values (1, 10);
insert into test_task (testsid, taskid) values (2, 8);
insert into test_task (testsid, taskid) values (2, 7);
insert into test_task (testsid, taskid) values (8, 8);

insert into grade (grade, resultid) values (50, 3);
insert into grade (grade, resultid) values (10, 7);
insert into grade (grade, resultid) values (62, 7);
insert into grade (grade, resultid) values (61, 6);
insert into grade (grade, resultid) values (55, 3);
insert into grade (grade, resultid) values (47, 8);
insert into grade (grade, resultid) values (87, 3);
insert into grade (grade, resultid) values (13, 5);
insert into grade (grade, resultid) values (94, 3);
insert into grade (grade, resultid) values (47, 9);