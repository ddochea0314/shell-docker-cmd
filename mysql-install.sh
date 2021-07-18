name=mysql

docker run -e "MYSQL_ROOT_PASSWORD=root123!@#" \
 -p 3306:3306 --name $name -h $name \
 -d mysql:8.0.25

 docker start $name