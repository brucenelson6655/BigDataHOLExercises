#!/bin/sh

hadoop fs -rm -r /user/oracle/output3

. oraenv <<EOF
orcl
EOF


sqlplus bda/welcome1 <<EOF

DROP TABLE LOADER_NOSQL;
exit;

EOF
