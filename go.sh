#!/bin/bash

docker-compose run web rails new . --force --database=postgresql
docker-compose build
cp ./db.yml ./config/database.yml
docker-compose up -d
docker-compose run web rake db:create
sleep 2
docker-compose down
docker-compose up --build -d
sleep 5
open http://localhost:3040/
