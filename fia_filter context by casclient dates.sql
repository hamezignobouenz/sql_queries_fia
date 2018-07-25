CREATE TABLE z_lab_dia_hive_temp.fia_casclient_context_inter_filtered AS

SELECT * FROM z_lab_dia_hive_temp.fia_casclient_context_inter
WHERE executiondate >= date_crea_cascli AND executiondate <= date_clo_cascli