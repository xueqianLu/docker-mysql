#!/bin/bash
port=3306
work=$PWD
passwd='bXlzcWw='
docker run -itd --restart=always --name mysql -v $work/data:/var/lib/mysql -v $work/logs:/logs -v $work/conf:/etc/mysql -p $port:3306 -e MYSQL_ROOT_PASSWORD=$passwd mysql --lower-case-table-names=1
