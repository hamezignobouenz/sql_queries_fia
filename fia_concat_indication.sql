set hive.fetch.task.conversion=none;   
DROP TABLE  z_lab_dia_hive_temp.fia_concat_testresult;
CREATE TABLE z_lab_dia_hive_temp.fia_concat_testresult AS
SELECT t1.context_id, t1.indication, t2.conclusion, t2.executiondate FROM
( 
SELECT t1.context_id, sort_array(collect_list(t1.rulename)) as indication FROM 
(
SELECT context_id, rulename
FROM
z_app_bdf_hive_socle_orchestra.fai_orchestra_testresult
where year = 2018
ORDER BY rulename
) as t1
group by t1.context_id
) as t1
INNER JOIN 
(
SELECT context_id, rulename as conclusion, executiondate
FROM z_app_bdf_hive_socle_orchestra.fai_orchestra_testresult
where finaleval = 1 and year = 2018
) as t2
ON t2.context_id = t1.context_id