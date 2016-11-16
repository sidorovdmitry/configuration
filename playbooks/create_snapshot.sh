#!/bin/bash
#source /encrypted/ansible/edx/edxvenv/bin/activate
#ansible-playbook -i /encrypted/ansible/edx/playbooks/hosts -e@/encrypted/ansible/edx/playbooks/server-vars.yml /encrypted/ansible/edx/playbooks/backups/create-snapshot.yml

source /encrypted/ansible/edx/updatedvenv/bin/activate
ansible-playbook -e 'ansible_python_interpreter=/encrypted/ansible/edx/updatedvenv/bin/python' -i ",localhost" -c local -e@/encrypted/ansible/edx/playbooks/server-vars.yml /encrypted/ansible/edx/playbooks/backups/ec2-snapshot.yml
