#!/bin/sh


echo "clean.sql"
sleep 2
psql -U postgres -d postgres -f "./clean.sql" 
