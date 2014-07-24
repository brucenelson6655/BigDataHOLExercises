#!/bin/sh

. oraenv <<EOF
orcl
EOF

sqlplus sys/welcome1 as sysdba<<EOF
set linesize 100
SELECT * FROM BDA.EXTERNAL_NOSQL;
exit;

EOF
