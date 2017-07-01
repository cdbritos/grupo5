#!/bin/sh

#ver https://andrewnix.wordpress.com/2012/02/16/error-en-postgresql-9-1-al-querer-autenticarse-como-usuario-postgres/

echo "dwh_DB.sql"
sleep 2
psql -U postgres -d postgres -f "./create_dwh_DB.sql" 
echo "dwh_tables.sql"
sleep 2
psql -U postgres -d dwh -f "./dwh_tables.sql" 
echo "auxiliar_DB.sql"
sleep 2
psql -U postgres -d postgres -f "./create_auxiliar_DB.sql" 
echo "auxiliar_tables.sql"
sleep 2
psql -U postgres -d auxiliar -f "./auxiliar_tables.sql" 
