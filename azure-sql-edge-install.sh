#!/bin/sh
# Azure SQL Edge 설치

name=$1
port=$2

if [ -z $name ];then
    name=azure-sql-edge
fi

if [ -z $port ];then
    port=1433
fi

docker run --cap-add SYS_PTRACE -e 'ACCEPT_EULA=1' -e 'MSSQL_SA_PASSWORD=root123!@#' \
-p ${port}:1433 --name $name \
-d mcr.microsoft.com/azure-sql-edge

docker start $name
