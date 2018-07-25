DROP TABLE z_lab_dia_hive_temp.fia_photos_delc_inter;

CREATE TABLE z_lab_dia_hive_temp.fia_photos_delc_inter AS ;

SELECT 
        CASE WHEN (username = 'EPIMETHEE') THEN 'J+3'
             WHEN d_id = context_id THEN 'INIT INTER'
             WHEN (executiondate <= dat_releve_hm) THEN 'AVANT INTER'
             WHEN (executiondate > dat_releve_hm AND username != 'EPIMETHEE') THEN 'APRES INTER'
        ELSE ''
        END AS context_type,
        *
FROM z_lab_dia_hive_temp.fia_casclient_context_inter
WHERE d_id is not null