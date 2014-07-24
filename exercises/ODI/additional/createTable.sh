#!/bin/sh

. oraenv <<EOF
orcl
EOF

sqlplus BDA/welcome1 <<EOF
create table ODI_HIVE
(
customer_id varchar2(4000),
credit_card_limits number,
credit_balance number,
n_mortgages number,
mortgage_amount number
);
exit;
EOF
