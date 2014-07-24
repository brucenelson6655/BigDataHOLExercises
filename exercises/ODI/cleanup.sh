#!/bin/sh

sqlplus BDA/welcome1 <<EOF
truncate table odi_hive;
EOF

rm -f *.log
rm -rf TempStatsStore

hive << EOF

drop table consolidated_buffer;

drop table e_consolidated_buffer;
exit;	
EOF

echo "Dont forget to delet the interfaces created in ODI"














