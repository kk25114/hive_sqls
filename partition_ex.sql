----1.外部表
-- create  external table ods_shentong061112(  
-- field001	string,
-- field002	string,
-- field003	string,
-- field004	string,
-- field005	string,
-- field006	string,
-- field007	string,
-- field008	string,
-- field009	string,
-- field010	string,
-- field011	string,
-- field012	string,
-- field013	string,
-- field014	string,
-- field015	string,
-- field016	string,
-- field017	string,
-- field018	string,
-- field019	string,
-- field020	string,
-- field021	string,
-- field022	string,
-- field023	string,
-- field024	string,
-- field025	string,
-- field026	string,
-- field027	string,
-- field028	string,
-- field029	string,
-- field030	string,
-- field031	string,
-- field032	string,
-- field033	string,
-- field034	string,
-- field035	string,
-- field036	string,
-- field037	string,
-- field038	string,
-- field039	string,
-- field040	string,
-- field041	string,
-- field042	string,
-- field043	string,
-- field044	string,
-- field045	string,
-- field046	string,
-- field047	string,
-- field048	string,
-- field049	string,
-- field050	string,
-- field051	string,
-- field052	string,
-- field053	string,
-- field054	string,
-- field055	string,
-- field056	string,
-- field057	string,
-- field058	string,
-- field059	string,
-- field060	string,
-- field061	string
-- )
-- partitioned by (stat_date string) 
-- ROW FORMAT  SERDE 'org.apache.hadoop.hive.contrib.serde2.MultiDelimitSerDe' 
-- WITH  SERDEPROPERTIES ("field.delim"="|++|")


-- alter table ods_shentong061112 add  
-- partition(stat_date='2019-06-11') location '/user/hdfs/yanke_data/shentong/2019-06-11'
-- partition (stat_date='2019-06-12') location '/user/hdfs/yanke_data/yuantong/2019-06-12'