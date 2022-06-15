#!/bin/bash
psql -f restore.sql
cp *.csv /workspace/heritagefostercare_dir/heritagefostercare/var/ssnExport/
cd /workspace/heritagefostercare_dir/heritagefostercare
updateDb
bin/console migrate:importSsn
bin/console cache:clear
