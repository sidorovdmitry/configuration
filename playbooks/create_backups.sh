#!/bin/bash
source /encrypted/ansible/edx/updatedvenv/bin/activate
ansible-playbook -i ",localhost" -c local -e@/encrypted/ansible/edx/playbooks/server-vars.yml /encrypted/ansible/edx/playbooks/backups/create-s3.yml

rds_endpoint=$(cat /encrypted/ansible/edx/playbooks/hosts | grep 'rds.amazonaws.com')
ansible-playbook -i ",localhost" -c local -e endpoint=$rds_endpoint -e@/encrypted/ansible/edx/playbooks/server-vars.yml /encrypted/ansible/edx/playbooks/backups/mysql.yml

ansible-playbook -i /encrypted/ansible/edx/playbooks/hosts -e@/encrypted/ansible/edx/playbooks/server-vars.yml /encrypted/ansible/edx/playbooks/backups/mongo.yml

