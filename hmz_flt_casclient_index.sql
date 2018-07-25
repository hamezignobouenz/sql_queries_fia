CREATE INDEX  idx_casclient
ON TABLE z_lab_dia_hive_temp.hmz_flt_casclient (cle_cas_client) AS 
'org.apache.hadoop.hive.ql.index.compact.CompactIndexHandler'
WITH DEFERRED REBUILD;