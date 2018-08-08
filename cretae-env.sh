#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "================================="
	echo "creating www.gamutkart$i container..."
	sleep 1
	docker run -it -d --name www.gamutkart$i  jaisriram111/shankar-img  /bin/bash
	echo "www.gamutkart$i container has been created!"
	echo "================================="
done
docker inspect -f '{{.NetworkSettings.Networks.bridge.IPAddress}}' `docker ps -a -q` > ip.txt
