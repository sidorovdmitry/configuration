#!/bin/bash

CONFIGURATION_VENV_BIN_PATH='/edx/app/edx_ansible/venvs/edx_ansible/bin'
CONFIGURATION_REPO_PATH='/edx/app/edx_ansible/edx_ansible'
SERVER_VARS='/edx/app/edx_ansible/server-vars.yml'
BACKUP_VARS='/edx/app/edx_ansible/ec2-snapshot-vars.yml'
HOSTS_FILE='/edx/app/edx_ansible/hosts'

cd $CONFIGURATION_REPO_PATH/playbooks
$CONFIGURATION_VENV_BIN_PATH/ansible-playbook -vvvv -c local -i ",localhost" -e@$SERVER_VARS -e@$BACKUP_VARS $CONFIGURATION_REPO_PATH/playbooks/run_role.yml -e "role=ec2-snapshot"
