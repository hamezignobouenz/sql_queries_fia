CREATE TABLE z_lab_dia_hive_temp.hmzr_mer_testr_inter AS
SELECT 
testname, COUNT(*) as cnt
FROM z_lab_dia_hive_temp.hmzr_flt_orchestra_testresult
group by testname