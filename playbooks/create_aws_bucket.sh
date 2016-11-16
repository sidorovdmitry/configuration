#!/bin/bash
source /encrypted/ansible/edx/edxvenv/bin/activate
/encrypted/ansible/edx/edxvenv/bin/ansible-playbook -e 'ansible_python_interpreter=/encrypted/ansible/edx/edxvenv/bin/python' -i ",localhost" -c local -e@/encrypted/ansible/edx/playbooks/server-vars.yml /encrypted/ansible/edx/playbooks/edx-aws-bucket-create.yml

