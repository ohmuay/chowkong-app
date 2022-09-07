#!/bin/bash

docker-compose -f docker-compose-prod.yml down --remove-orphans

docker-compose -f docker-compose-prod.yml up -d --remove-orphans