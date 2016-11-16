#!/bin/bash
source /encrypted/ansible/edx/edxvenv/bin/activate
rds_endpoint=$(cat /encrypted/ansible/edx/playbooks/hosts | grep 'rds.amazonaws.com')
echo $rds_endpoint
ansible-playbook -i ",localhost" -c local /encrypted/ansible/edx/playbooks/edx-east/create_db_and_users.yml -e @/encrypted/ansible/edx/playbooks/mysql-rds-custom.yml -e endpoint=$rds_endpoint -e@/encrypted/ansible/edx/playbooks/server-vars.yml

