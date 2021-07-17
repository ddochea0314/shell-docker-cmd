# mssql 2019 설치 shell script

name=mssql

docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=root123!@#" \
   -p 1433:1433 --name $name -h $name \
   -d mcr.microsoft.com/mssql/server:2019-latest

docker start $name
