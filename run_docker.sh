#!/bin/bash

mkdir -p grafana prometheus

docker compose down

chmod u+w grafana
chmod g+w grafana

chmod u+w prometheus
chmod g+w prometheus

docker compose up --build -d

# change the admin password

chmod -R u+w prometheus/data
chmod -R g+w prometheus/data

docker compose restart prometheus
