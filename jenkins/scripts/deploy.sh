#!/bin/bash

docker-compose down --remove-orphans --rmi all

docker-compose up -d --remove-orphans