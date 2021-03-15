#!/bin/sh
set -e

# Найти ID работающего контейнера
CONTAINER_ID=$(docker ps | grep takenote | cut -d" " -f1)

# Остановить старый контейнер, запустить новый, очистить систему
docker stop ${CONTAINER_ID}
docker run --restart unless-stopped -d -p 194.87.98.205:9090:8080 aksemoron/random_random:tagname
docker system prune -a -f