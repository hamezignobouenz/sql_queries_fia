DROP TABLE  z_lab_dia_hive_temp.fia_mer_concat_context_testresult;
CREATE TABLE z_lab_dia_hive_temp.fia_mer_concat_context_testresult AS 
SELECT t2.*, t1.scenario, t1.username, t1.service, t1.messagecode, t1.nd 
FROM 
(
SELECT id, scenario, username, service, messagecode, nd 
FROM z_lab_dia_hive_temp.fia_concat_context
)as t1
INNER JOIN
(
SELECT *
FROM z_lab_dia_hive_temp.fia_concat_testresult
)as t2
ON t2.context_id = t1.id