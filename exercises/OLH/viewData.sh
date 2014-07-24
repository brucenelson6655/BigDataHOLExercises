#!/bin/sh

. oraenv <<EOF
orcl
EOF

sqlplus BDA/welcome1 <<EOF
set linesize 100
select * from BDA.LOADER_NOSQL;
exit;
EOF
