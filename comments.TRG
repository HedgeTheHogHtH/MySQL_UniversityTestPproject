TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` trigger notify_comment after insert on comments\nfor each row\ninsert into notifications(user_id, message)\nvalues((select user_id from posts where posts.id_post = new.post_id), \'New comment on your post\')'
sql_modes=1344274432
definers='root@localhost'
client_cs_names='cp1251'
connection_cl_names='cp1251_general_ci'
db_cl_names='cp1251_general_ci'
