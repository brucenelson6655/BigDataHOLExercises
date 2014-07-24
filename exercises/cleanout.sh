#!/bin/sh

cd wordCount
sh ./cleanup.sh
cd ../noSQL
sh ./cleanup.sh
cd ../pig
sh ./cleanup.sh
cd ../hive
sh ./cleanup.sh
cd ../impala
sh ./cleanup.sh
cd ../OLH
sh ./cleanup.sh
cd ../OSCH
sh ./cleanup.sh
cd ../ODI
sh ./cleanup.sh
cd ../OXH
sh ./cleanup.sh
cd ../solr
sh ./cleanup.sh

cd

~/scripts/stop_oracle.sh


