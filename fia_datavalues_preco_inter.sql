DROP TABLE z_lab_dia_hive_temp.fia_mer_concat_context_testresult_precoInter;
CREATE TABLE z_lab_dia_hive_temp.fia_mer_concat_context_testresult_precoInter AS
SELECT t1.*, t2.precoInterNeeded, t3.precoInterRDV
FROM
(
SELECT *
FROM z_lab_dia_hive_temp.fia_mer_concat_context_testresult
) as t1
INNER JOIN
(
SELECT context_id,  value as precoInterNeeded
FROM z_app_bdf_hive_socle_orchestra.fai_orchestra_datavalue 
where year = 2018 and key = "preco.intervention.gen.needed"
) as t2
ON t1.context_id = t2.context_id
INNER JOIN
(
SELECT context_id,  value as precoInterRDV
FROM z_app_bdf_hive_socle_orchestra.fai_orchestra_datavalue 
where year = 2018 and key = "preco.intervention.gen.rendez.vous"
) as t3
ON t1.context_id = t3.context_id