#!/bin/bash
read -p "Deregister Instance from Load Balancer... Are you sure? [Y/y]" -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
    /encrypted/ansible/edx/edxvenv/bin/ansible-playbook -i /encrypted/ansible/edx/playbooks/hosts -e "edx_hosts=edx1" -e "NODE_STATE=absent" -e@/encrypted/ansible/edx/playbooks/server-vars.yml /encrypted/ansible/edx/playbooks/edx-add-remove-to-from-elb.yml
fi
