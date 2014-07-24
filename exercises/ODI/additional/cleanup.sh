#!/bin/sh

rm *.log

. oraenv <<EOF
orcl
EOF

sqlplus BDA/welcome1 <<EOF
drop table ODI_HIVE;
exit;
EOF
