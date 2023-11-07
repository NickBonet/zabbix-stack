#!/bin/sh
# RUN BEFORE UPGRADING POSTGRES IMAGE.
docker-compose down
 
docker-compose up -d db
docker exec zabbix_db_1 pg_dumpall -U zabbixadmin > pgdump.sql
docker-compose down