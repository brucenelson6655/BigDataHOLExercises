#!/bin/sh

rm *.log

. oraenv <<EOF
orcl
EOF

sqlplus BDA/welcome1 @additional/ODI_HIVE
