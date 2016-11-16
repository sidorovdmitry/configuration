#!/bin/bash
/encrypted/ansible/edx/edxvenv/bin/ansible-playbook -i /encrypted/ansible/edx/playbooks/hosts -e "edx_hosts=edx2" -e "NODE_STATE=present" -e@/encrypted/ansible/edx/playbooks/server-vars.yml /encrypted/ansible/edx/playbooks/edx-add-remove-to-from-elb.yml
