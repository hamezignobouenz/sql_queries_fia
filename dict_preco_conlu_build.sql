drop table z_lab_dia_hive_temp.dict_conclu_preco2;
create table z_lab_dia_hive_temp.dict_conclu_preco2 AS 
SEleCT t1.conclusion, t1.total, t1.preco, t1.preco/t1.total as prec_preco  from(
select conclusion, count(*) as total, sum(precointer) as preco 
from z_lab_dia_hive_temp.fia_mer_orch_dmdinter2
group by conclusion
) as t1