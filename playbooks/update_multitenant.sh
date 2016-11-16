#!/bin/bash
/encrypted/ansible/edx/edxvenv/bin/ansible-playbook -i ",localhost" -c local -e@/encrypted/ansible/edx/playbooks/server-vars.yml /encrypted/ansible/edx/playbooks/edx-aws-bucket-create.yml

/encrypted/ansible/edx/edxvenv/bin/ansible-playbook -i /encrypted/ansible/edx/playbooks/hosts -e@/encrypted/ansible/edx/playbooks/server-vars.yml /encrypted/ansible/edx/playbooks/edx-provision.yml

