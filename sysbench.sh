#!/bin/bash
sysbench /usr/share/sysbench/oltp_read_write.lua --threads=4 --mysql-host=192.168.200.21 --mysql-user=charly --mysql-password=qaz123456 --mysql-port=3306 --tables=20 --table-size=10000000 prepare

sysbench /usr/share/sysbench/oltp_read_write.lua --threads=16 --events=0 --time=300 --mysql-host=192.168.200.21 --mysql-user=sbtest --mysql-password=sbtestPasswd --mysql-port=3306 --tables=20 --delete_inserts=10 --index_updates=10 --non_index_updates=10 --table-size=10000000 --db-ps-mode=disable --report-interval=1 run
