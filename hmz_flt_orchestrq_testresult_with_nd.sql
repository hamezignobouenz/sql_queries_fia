CREATE TABLE z_lab_dia_hive_temp.hmzr_flt_orchestra_testresult_with_nd AS
SELECT 
t1.context_id, t1.id, t1.executiondate, t1.criticity, t1.testname, t1.finaleval, t1.
FROM z_lab_dia_hive_temp.hmzr_flt_orchestra_testresult t1
LEFT JOIN 
SELECT 

FROM z_lab_dia_hive_temp.hmzr_flt_orchestra_context t2
ON t1.context_id = t2.id