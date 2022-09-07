#!/bin/bash

docker-compose -f docker-compose-prod.yml down --remove-orphans --rmi all

docker-compose -f docker-compose-prod.yml up -d --remove-orphans