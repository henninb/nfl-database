#!/bin/sh

cat aaaa_tables.sql zzzz_tables.sql > master.sql

#psql -h $(ipconfig getifaddr en0) -p 5432 -d postgres -U henninb < master.sql > log.txt 2>&1
psql -h $(hostname -i | awk '{print $1}') -p 5432 -d postgres -U henninb < master.sql > log.txt 2>&1

#echo psql finance_db -U henninb -h $(ipconfig getifaddr en0)
echo psql nfl_db -U henninb -h $(hostname -i | awk '{print $1}')

exit 0
