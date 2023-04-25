#!/bin/bash

docker compose build --force-rm --compress docker-compose-23.0.4-alpine3.17-1.0.0
docker push signo/docker-compose:23.0.4-alpine3.17-1.0.0