DROP TABLE z_lab_dia_hive_temp.fia_concat_context;
CREATE TABLE z_lab_dia_hive_temp.fia_concat_context AS 
SELECT id, scenario, username, service, messagecode, string(concat('0', string(nd))) as nd
FROM z_app_bdf_hive_socle_orchestra.fai_orchestra_context
where year = 2018 and scenario in ('Delc','DelcComplet','DelcEnIntervention','DelcEnInterventionProduction','DelcEnInterventionSAV','DelcXDSL')