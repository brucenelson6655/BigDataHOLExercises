#!/bin/sh

. oraenv <<EOF
orcl
EOF

sqlplus BDA/welcome1 <<EOF
set linesize 100
column customer_id format A15
update BDA.ODI_HIVE set n_mortgages = 0 where mortgage_amount = 0;
delete from BDA.ODI_HIVE where mortgage_amount < 0;
commit;
select * from BDA.ODI_HIVE;
exit;
EOF
