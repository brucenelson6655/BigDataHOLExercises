#!/bin/sh

unset HADOOP_HOME
./cheat.r
hadoop fs -cat insur_cust_ltv_sample/part-00000

. oraenv <<EOF
orcl
EOF

sqlplus BDA/welcome1 <<EOF
select CUSTOMER_ID, CREDIT_BALANCE, N_MORTGAGES, SEX, MARITAL_STATUS, LTV, LTV_BIN from insur_cust_ltv_sample where customer_id = 'CU11596';
exit;
EOF
