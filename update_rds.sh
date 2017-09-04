#!/bin/bash

CONFIGURATION_VENV_BIN_PATH='/edx/app/edx_ansible/venvs/edx_ansible/bin'
CONFIGURATION_REPO_PATH='/edx/app/edx_ansible/edx_ansible'
SERVER_VARS='/edx/app/edx_ansible/server-vars.yml'
HOSTS_FILE='/edx/app/edx_ansible/hosts'

rds_endpoint=$(cat $HOSTS_FILE | grep 'rds.amazonaws.com')
echo $rds_endpoint
$CONFIGURATION_VENV_BIN_PATH/ansible-playbook -i ",localhost" -c local $CONFIGURATION_REPO_PATH/playbooks/edx-east/create_db_and_users.yml -e @$CONFIGURATION_REPO_PATH/playbooks/mysql-rds-custom.yml -e endpoint=$rds_endpoint -e@$SERVER_VARS

