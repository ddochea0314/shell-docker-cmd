# mssql 2019 설치 shell script

name=sql1

sudo docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=root123!@#" \
   -p 1433:1433 --name $name -h $name \
   -d mcr.microsoft.com/mssql/server:2019-latest

sudo docker start $name
