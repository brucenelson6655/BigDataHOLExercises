#!/bin/sh

echo "####################################################################"
echo "Resetting Oracle Database"
echo "####################################################################"
~/scripts/stop_oracle.sh
~/scripts/start_oracle.sh

cd wordCount
echo "####################################################################"
basename `pwd`
echo "####################################################################"
sh ./cleanup.sh
sh ./cheat.sh
cd ../noSQL
echo "####################################################################"
basename `pwd`
echo "####################################################################"
sh ./cleanup.sh
sh ./cheat.sh
cd ../pig
echo "####################################################################"
basename `pwd`
echo "####################################################################"
sh ./cleanup.sh
sh ./cheat.sh
cd ../hive
echo "####################################################################"
basename `pwd`
echo "####################################################################"
sh ./cleanup.sh
sh ./cheat.sh
cd ../impala
echo "####################################################################"
basename `pwd`
echo "####################################################################"
sh ./cleanup.sh
sh ./cheat.sh
cd ../OLH
echo "####################################################################"
basename `pwd`
echo "####################################################################"
sh ./cleanup.sh
sh ./cheat.sh
cd ../OSCH
echo "####################################################################"
basename `pwd`
echo "####################################################################"
sh ./cleanup.sh
sh ./cheat.sh
cd ../ODI
echo "####################################################################"
basename `pwd`
echo "####################################################################"
sh ./cleanup.sh
sh ./cheat.sh
cd ../R
echo "####################################################################"
basename `pwd`
echo "####################################################################"
sh ./cleanup.sh
sh ./cheat.sh

cd ../OXH
echo "####################################################################"
basename `pwd`
echo "####################################################################"
sh ./cleanup.sh
sh ./cheat.sh

cd ../solr
echo "####################################################################"
basename `pwd`
echo "####################################################################"
sh ./cleanup.sh
sh ./cheat.sh

echo Check HUE job admin to be sure all jobs ran successfully 
echo "FILE should exist in HDFS to confirm all services were working"
hadoop fs -ls insur_cust_ltv_sample
echo we should see 1015 lines of data 
echo -n "line count of part-00000 : "
hadoop fs -cat insur_cust_ltv_sample/part-00000 | wc -l 

echo "run cleanout.sh before starting lessons !"
