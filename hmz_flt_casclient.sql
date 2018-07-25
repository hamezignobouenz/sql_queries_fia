set hive.fetch.task.conversion=none;   
CREATE TABLE z_lab_dia_hive_temp.hmz_flt_casclient AS SELECT
cle_cas_client,
concordance_delc,
concordance_inter,
date_clo_cascli,
date_crea_cascli,
fiabilite,
line_id,
nb_diag,
nb_dmd_inter_filtrees,
nb_inter,
nd,
perimetre,
segmentation,
top_instable,
top_inter_contre_reco,
top_reiteration_cascli
FROM z_lab_dia_hive_socle.diag_base_casclient
WHERE year(date_crea_cascli) >= 2018
AND top_dp15_cas = 0
AND top_fibre = 0
AND perimetre = 'RES'
AND top_client_rtc_only = 0
AND top_dom = 0
AND d_code_produit = 'XDSL'
;