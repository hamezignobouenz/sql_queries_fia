CREATE TABLE z_lab_dia_hive_temp.d AS

SELECT *
FROM
(
SELECT rulename, precoInter, count(*) as cnt
FROM z_lab_dia_hive_temp.fia_mer_orch_dmdinter
where finaleval = 1
group by  rulename, precoInter
)
pivot (sum(cnt))
