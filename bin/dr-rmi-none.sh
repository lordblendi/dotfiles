docker images | grep "<none>" | awk "{print $3}" | awk '{docker rmi -f $1}'


