// Requete pour creer le dictionnaire Conclusion/Indication et precoInter
// Approche naive
CREATE TABLE z_lab_dia_hive_temp.fia_mer_orch_dmdinter AS
SELECT * FROM
(
SELECT *
FROM z_app_bdf_hive_socle_orchestra.fai_orchestra_testresult
WHERE year = 2018
)
as t1

LEFT JOIN 

(
SELECT d_id, 1 as precoInter
FROM  z_lab_dia_hive_socle.diag_base_spas_dmd_inter
) as t2

ON t1.context_id = t2.d_id