#!/bin/bash

echo '''
*************************************
******* Docker Composing Down *******
*************************************
'''

docker-compose -f docker-compose-prod.yml down --remove-orphans


echo '''
*************************************
******** Docker Composing Up ********
*************************************
'''

docker-compose -f docker-compose-prod.yml up -d --remove-orphans