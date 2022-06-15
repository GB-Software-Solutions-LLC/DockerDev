#!/bin/bash
REMOTEHOST="hfcutil.gbsoftwaresolutions.com"
REMOTEPATH="/BACKUPS/HeritageFosterCare"
FILENAME=`ssh -lgerald $REMOTEHOST "ls -1 $REMOTEPATH/*.gz | sort -r | head -n1"`
echo $FILENAME
scp gerald@$REMOTEHOST:$FILENAME ./

