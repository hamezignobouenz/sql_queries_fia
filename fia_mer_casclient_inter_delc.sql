DROP TABLE z_lab_dia_hive_temp.fia_casclient_context_inter;

CREATE TABLE z_lab_dia_hive_temp.fia_casclient_context_inter AS

SELECT l.*, r.* FROM 

(SELECT * FROM z_lab_dia_hive_temp.fia_mer_casclient_inter) AS l

INNER JOIN

(SELECT  nd AS nd_r, context_id, indication, conclusion, executiondate, scenario, username, service, messagecode
FROM z_lab_dia_hive_temp.fia_mer_concat_context_testresult) AS r

ON l.nd = r.nd_r;