insert into server(version, ip, name, id) values(1, '111.112.113.114', 'A', 1);
insert into server(version, ip, name, id) values(1, '221.222.223.224', 'B', 2);
insert into server(version, ip, name, id) values(1, '68.69.70.71', 'C', 3);

insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 30, 	1, '2', 	PARSEDATETIME('2018-02-03 03:18:06', 'yyyy-MM-dd HH:mm:ss'), 'Adam', 	1	, 'PUT', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 550, 	1, '3', 	PARSEDATETIME('2018-02-03 13:08:06', 'yyyy-MM-dd HH:mm:ss'), 'Adam', 	2	, 'PUT', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 210, 	1, '3', 	PARSEDATETIME('2018-02-03 22:28:06', 'yyyy-MM-dd HH:mm:ss'), 'Jan', 	3	, 'PUT', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 890, 	1, '3', 	PARSEDATETIME('2018-12-04 03:28:06', 'yyyy-MM-dd HH:mm:ss'), 'Jan', 	4	, 'GET', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 350, 	1, '3', 	PARSEDATETIME('2018-12-04 03:28:04', 'yyyy-MM-dd HH:mm:ss'), 'Jan', 	5	, 'GET', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 4200, 	1, '3', 	PARSEDATETIME('2018-12-05 07:28:04', 'yyyy-MM-dd HH:mm:ss'), 'Jan', 	6	, 'GET', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 10, 	1, '3', 	PARSEDATETIME('2018-02-05 07:28:04', 'yyyy-MM-dd HH:mm:ss'), 'Jan', 	7	, 'GET', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 3, 		1, '22', 	PARSEDATETIME('2018-02-06 07:28:04', 'yyyy-MM-dd HH:mm:ss'), 'Adam', 	8	, 'GET', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 530, 	1, '22', 	PARSEDATETIME('2018-02-07 17:28:04', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	9	, 'GET', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 6530, 	1, '22', 	PARSEDATETIME('2018-02-08 17:28:04', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	10	, 'PUT', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 230, 	1, '22', 	PARSEDATETIME('2018-12-08 17:25:04', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	11	, 'PUT', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 180, 	1, '22', 	PARSEDATETIME('2018-12-09 17:25:04', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	12	, 'POST', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 320, 	1, '8', 	PARSEDATETIME('2018-02-09 13:25:06', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	13	, 'POST', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 320, 	1, '8', 	PARSEDATETIME('2018-02-09 13:05:06', 'yyyy-MM-dd HH:mm:ss'), 'Adam', 	14	, 'POST', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 320, 	1, '8', 	PARSEDATETIME('2018-02-09 13:05:06', 'yyyy-MM-dd HH:mm:ss'), 'Adam', 	15	, 'DELETE', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 6530, 	2, '22', 	PARSEDATETIME('2017-04-08 14:28:04', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	16	, 'PUT', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 230, 	2, '22', 	PARSEDATETIME('2017-04-08 14:25:04', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	17	, 'PUT', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 180, 	2, '22', 	PARSEDATETIME('2017-04-09 04:24:04', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	18	, 'POST', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 320, 	2, '8', 	PARSEDATETIME('2017-04-09 04:24:06', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	19	, 'POST', 'description');
insert into request_event(analysis_required, duration, server_id, thread_id, time, user_id, id, method, description) values (false, 320, 	2, '8', 	PARSEDATETIME('2018-04-09 03:25:06', 'yyyy-MM-dd HH:mm:ss'), 'Adam', 	20	, 'POST','description');

insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 30, 		2, '2', 	PARSEDATETIME('2018-02-03 03:18:06', 'yyyy-MM-dd HH:mm:ss'), 'Adam', 	21,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 550, 		2, '3', 	PARSEDATETIME('2018-02-03 13:08:06', 'yyyy-MM-dd HH:mm:ss'), 'Adam', 	22,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 210, 		2, '3', 	PARSEDATETIME('2018-02-03 22:28:06', 'yyyy-MM-dd HH:mm:ss'), 'Jan', 	23,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 890, 		2, '3', 	PARSEDATETIME('2018-12-04 03:28:06', 'yyyy-MM-dd HH:mm:ss'), 'Jan', 	24,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 350, 		2, '3', 	PARSEDATETIME('2018-12-04 03:28:04', 'yyyy-MM-dd HH:mm:ss'), 'Jan', 	25,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 4200, 	2, '3', 	PARSEDATETIME('2018-12-05 07:28:04', 'yyyy-MM-dd HH:mm:ss'), 'Jan', 	26,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 10, 		2, '3', 	PARSEDATETIME('2018-02-05 07:28:04', 'yyyy-MM-dd HH:mm:ss'), 'Jan', 	27,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 3, 		2, '22', 	PARSEDATETIME('2018-02-06 07:28:04', 'yyyy-MM-dd HH:mm:ss'), 'Adam', 	28,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 530, 		2, '22', 	PARSEDATETIME('2018-02-07 17:28:04', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	29,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 6530, 	3, '22', 	PARSEDATETIME('2018-02-08 17:28:04', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	30,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 230, 		3, '22', 	PARSEDATETIME('2018-12-08 17:25:04', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	31,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 180, 		3, '22', 	PARSEDATETIME('2018-12-09 17:25:04', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	32,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 320, 		3, '8', 	PARSEDATETIME('2018-02-09 13:25:06', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	33,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 320, 		3, '8', 	PARSEDATETIME('2018-02-09 13:05:06', 'yyyy-MM-dd HH:mm:ss'), 'Adam', 	34,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 320, 		3, '8', 	PARSEDATETIME('2018-02-09 13:05:06', 'yyyy-MM-dd HH:mm:ss'), 'Adam', 	35,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 6530, 	3, '22', 	PARSEDATETIME('2017-04-08 14:28:04', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	36,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 230, 		3, '22', 	PARSEDATETIME('2017-04-08 14:25:04', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	37,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 180, 		3, '22', 	PARSEDATETIME('2017-04-09 04:24:04', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	38,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (false, 320, 		3, '8', 	PARSEDATETIME('2017-04-09 04:24:06', 'yyyy-MM-dd HH:mm:ss'), 'Pawel', 	39,    'SELECT 1 FROM DUAL', 'description');
insert into sql_event(analysis_required, duration, server_id, thread_id, time, user_id, id, sql_query, description) values (true, 320, 		3, '8', 	PARSEDATETIME('2018-04-09 03:25:06', 'yyyy-MM-dd HH:mm:ss'), 'Adam', 	40,    'SELECT 1 FROM DUAL', 'description');

insert into comment(id, content, event_id) values (1, 'komentarz11', 1);
insert into comment(id, content, event_id) values (2, 'komentarz12', 1);
insert into comment(id, content, event_id) values (3, 'komentarz21', 2);
insert into comment(id, content, event_id) values (4, 'komentarz22', 2);

insert into comment(id, content, event_id) values (5, 'komentarz31', 3);
insert into comment(id, content, event_id) values (6, 'komentarz32', 3);
insert into comment(id, content, event_id) values (7, 'komentarz41', 4);
insert into comment(id, content, event_id) values (8, 'komentarz42', 4);

insert into follower(id, user_id, comment_id, subscription_date) values (1, 'user123', 1, '2018-02-03 13:08:06');
insert into follower(id, user_id, comment_id, subscription_date) values (2, 'user123', 2, '2018-02-03 13:08:06');
insert into follower(id, user_id, comment_id, subscription_date) values (3, 'user123', 3, '2018-02-03 13:08:06');
insert into follower(id, user_id, comment_id, subscription_date) values (4, 'user123', 4, '2018-02-03 13:08:06');
insert into follower(id, user_id, comment_id, subscription_date) values (5, 'user123', 5, '2018-02-03 13:08:06');
insert into follower(id, user_id, comment_id, subscription_date) values (6, 'user123', 6, '2018-02-03 13:08:06');
insert into follower(id, user_id, comment_id, subscription_date) values (7, 'user123', 7, '2018-02-03 13:08:06');
insert into follower(id, user_id, comment_id, subscription_date) values (8, 'user123', 8, '2018-02-03 13:08:06');

insert into follower(id, user_id, comment_id, subscription_date) values (9, 'user456', 1, '2018-02-03 13:08:06');
insert into follower(id, user_id, comment_id, subscription_date) values (10, 'user456', 2, '2018-02-03 13:08:06');
insert into follower(id, user_id, comment_id, subscription_date) values (11, 'user456', 3, '2018-02-03 13:08:06');

commit;

alter sequence server_seq restart with 1000;
alter sequence event_seq restart with 1000;
