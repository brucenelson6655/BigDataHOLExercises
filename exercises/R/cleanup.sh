#!/bin/sh

hadoop fs -rm -r insur_cust_ltv_sample

. oraenv <<EOF
orcl
EOF

sqlplus bda/welcome1 <<EOF
DROP TABLE INSUR_CUST_LTV_SAMPLE;
exit;

EOF

rm *.pdf
