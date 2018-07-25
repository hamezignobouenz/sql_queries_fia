DROP TABLE z_lab_dia_hive_temp.fia_photos_delc_non_inter;

CREATE TABLE z_lab_dia_hive_temp.fia_photos_delc_non_inter AS 

SELECT *
FROM z_lab_dia_hive_temp.fia_casclient_context_inter
WHERE d_id is null