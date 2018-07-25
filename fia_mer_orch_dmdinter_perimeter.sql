
CREATE TABLE z_lab_dia_hive_temp.fia_mer_orch_casclient AS 
SELECT * FROM 
(
SELECT *
FROM z_app_bdf_hive_socle_orchestra.fai_orchestra_testresult 
WHERE year = 2018
)
as t1
INNER JOIN 
(
SELECT distinct nd as nd_right
FROM z_lab_dia_hive_temp.hmz_flt_casclient
)
as t2
ON t1.nd = t2.nd

