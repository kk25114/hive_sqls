#!/bin/bash
echo "Usage: ./addPartitionByDate tableName statDate days"   
echo "ex: ./addPartitionByDate test 20190617 30 "
echo "tableName default test, statDate default current date, days default 30"
table=${arg1:-'test'}
p_name='p_date'
cur_date=`date +%Y%m%d`
start_date=${arg2:-$cur_date}
days=${arg3:-'30'}
echo $table
echo $start_date
echo $days
sql=''
for((i=1;i<=$days;i++));
do
    d=`date -d "$start_date +$i day" +%Y%m%d`
    sql+="ALTER TABLE $table ADD IF NOT EXISTS PARTITION ($p_name='$d');"
done
echo $sql
echo "hive begin"
hive -S -e "$sql"
echo "hive end"

