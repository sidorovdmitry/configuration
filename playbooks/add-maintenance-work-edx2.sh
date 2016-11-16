#!/bin/bash
/encrypted/ansible/edx/edxvenv/bin/ansible-playbook -i /encrypted/ansible/edx/playbooks/hosts -e "edx_hosts=edx2" -e "NGINX_MAINTENANCE_STATE=true" /encrypted/ansible/edx/playbooks/edx-add-remove-maintenance-work.yml
