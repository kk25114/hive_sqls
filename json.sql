CREATE TABLE `people`(
`field_1` string, 
`field_2` string, 
`field_3` string)
ROW FORMAT SERDE 
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
WITH SERDEPROPERTIES ( 
'colelction.delim'='', 
'field.delim'='', 
'mapkey.delim'='', 
'serialization.format'='') 

STORED AS INPUTFORMAT 
'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://master:8020/user/hive/warehouse/yanke_data.db/people'
