#!/bin/sh

. oraenv <<EOF
orcl
EOF

sqlplus BDA/welcome1 <<EOF
drop table BDA.EXTERNAL_HDFS;
exit;
EOF
