CREATE TABLE z_lab_dia_hive_temp.hmzr_flt_dmd_inter AS 
SELECT nd, d_id, case_id, cle_cas_client, canal_dmd_inter, top_inter_contre_reco, top_contre_preco_diag, 
top_inter_15j, top_filtrage, cause_filtrage,d_scenario, d_symptome
FROM z_lab_dia_hive_socle.diag_base_spas_dmd_inter
where perimetre = 'RES' and top_dom = 0 and top_fibre = 0 and  top_client_rtc_only = 0
and top_dp15 = 0