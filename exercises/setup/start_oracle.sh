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

cp /home/oracle/scripts/StopDB.desktop /home/oracle/Desktop/.

fi
