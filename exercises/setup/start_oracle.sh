#!/bin/bash

if [ ! -f /home/oracle/Desktop/StopDB.desktop ]; 
then

echo "$(date) : Starting TNSLISTENER"
lsnrctl start

echo "$(date) : Starting Oracle Database 12c"
sqlplus / as sysdba <<ENDOFSQL
startup
exit
ENDOFSQL

sudo service impala-server start
sudo service impala-catalog start
sudo service impala-state-store start
sudo service solr-server start
sudo service spark-master start
sudo service spark-worker start


cp /home/oracle/exercises/setup/StopHOL.desktop /home/oracle/Desktop/.

fi
