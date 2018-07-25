set hive.fetch.task.conversion=none;   
CREATE TABLE z_lab_dia_hive_temp.hmzr_flt_orchestra_datavalues AS 
SELECT * FROM z_app_bdf_hive_socle_orchestra.fai_orchestra_datavalue
WHERE id IN (SELECT DISTINCT id FROM z_lab_dia_hive_temp.hmzr_flt_orchestra_testresult)
LIMIT 1000
;