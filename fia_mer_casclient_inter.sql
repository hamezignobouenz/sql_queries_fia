DROP TABLE z_lab_dia_hive_temp.fia_mer_casclient_inter;

CREATE TABLE z_lab_dia_hive_temp.fia_mer_casclient_inter 
AS
SELECT casclient.cle_cas_client, casclient.nd, casclient.date_crea_cascli, casclient.date_clo_cascli, 
        inter.d_id, inter.dat_releve_hm
FROM
(
        SELECT cle_cas_client, nd, date_crea_cascli, date_clo_cascli 
        FROM z_lab_dia_hive_socle.diag_base_casclient
) AS casclient
LEFT JOIN
(
        SELECT cle_cas_client AS keycas, d_id, dat_releve_hm
        FROM z_lab_dia_hive_socle.diag_base_inter
) AS inter
ON casclient.cle_cas_client = inter.keycas