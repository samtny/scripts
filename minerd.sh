#!/bin/bash
read -p "Username: " username
read -p "Worker: " worker
read -p "Password: " password
read -p "Threads: " threads

set -x
./minerd --algo=scrypt --url=stratum+tcp://coins.arstechnica.com:3333 --userpass=$username.$worker:$password --thread=$threads
