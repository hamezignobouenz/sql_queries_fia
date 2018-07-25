// Requete pour creer le dictionnaire Conclusion/Indication et precoInter
// Approche plus complete que la precedente car se base sur les tests orchestra restreints au bon perimetre
;
DROP TABLE z_lab_dia_hive_temp.fia_mer_orch_dmdinter2;
CREATE TABLE z_lab_dia_hive_temp.fia_mer_orch_dmdinter2 AS
SELECT t1.* , if(isnull(t2.precoInter) ,0,t2.precoInter ) as precoInter FROM
(
SELECT *
FROM z_lab_dia_hive_temp.fia_mer_concat_context_testresult_precointer
)
as t1
LEFT JOIN 
(
SELECT d_id, 1 as precoInter
FROM z_lab_dia_hive_socle.diag_base_spas_dmd_inter
) as t2

ON t1.context_id = t2.d_id