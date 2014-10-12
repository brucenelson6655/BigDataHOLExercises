#!/bin/bash
echo "$(date) : Stopping TNSLISTENER"
lsnrctl stop

echo "$(date) : Stopping Oracle Database 12c"
sqlplus / as sysdba <<ENDOFSQL
shutdown immediate
exit
ENDOFSQL

sudo service spark-worker stop
sudo service spark-master stop
sudo service solr-server stop
sudo service impala-state-store stop
sudo service impala-catalog stop
sudo service impala-server stop

rm /home/oracle/Desktop/StopHOL.desktop
