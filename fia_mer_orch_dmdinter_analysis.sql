CREATE TABLE z_lab_dia_hive_temp.d AS
SELECT rulename, finaleval, precoInter, count(*) as cnt
FROM z_lab_dia_hive_temp.fia_mer_orch_dmdinter
group by  rulename, finaleval, precoInter