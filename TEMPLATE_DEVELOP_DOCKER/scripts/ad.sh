#!/bin/sh

USERID=`id -u`
GROUPID=`id -g`
docker compose exec -u "${USERID}:${GROUPID}" PROJECT_NAME bash
