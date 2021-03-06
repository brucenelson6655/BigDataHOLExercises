#!/bin/sh

./stopNoSQL.sh

rm *.class
rm externaltables/*.class
rm externaltables.jar
rm CustomerCount.jar
rm -r kvroot
rm -r kv_classes
rm /u01/nosql/test/exttab/data/*

. oraenv <<EOF
orcl
EOF

sqlplus bda/welcome1 <<EOF

DROP TABLE EXTERNAL_NOSQL;
exit;

EOF

hadoop fs -rm -r loader
