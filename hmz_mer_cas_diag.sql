CREATE TABLE z_lab_dia_hive_temp.hmzr_mer_cascli_diag 
STORED AS ORC tblproperties ("orc.compress" = "SNAPPY")
AS 
SELECT t1.date_crea_cascli, t1.segmentation, t1.date_clo_cascli, t1.nb_diag, t1.top_instable, 
t1.top_inter_contre_reco,t1.top_reiteration_cascli,
t2.*
FROM z_lab_dia_hive_temp.hmz_flt_casclient as t1
LEFT JOIN 
z_lab_dia_hive_temp.hmzr_flt_diag as t2
ON t1.cle_cas_client = t2.cle_cas_client
;