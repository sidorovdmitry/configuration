#!/bin/bash
source /encrypted/ansible/edx/edxvenv/bin/activate
ansible-playbook -i /encrypted/ansible/edx/playbooks/hosts -e@/encrypted/ansible/edx/playbooks/server-vars.yml /encrypted/ansible/edx/playbooks/edx-update-mysql.yml 
