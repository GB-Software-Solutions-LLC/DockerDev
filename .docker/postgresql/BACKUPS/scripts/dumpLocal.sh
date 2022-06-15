#!/bin/bash
CURDATE=`date +"%Y-%m-%d-%H-%M"`;
FLNAME="hfc_local_$CURDATE.sql";
/usr/bin/pg_dump -c -C -f $FLNAME -d heritagefostercare

