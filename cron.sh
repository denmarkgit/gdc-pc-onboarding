#!/usr/bin/env bash

# do stuff

cd /home/denmark/gdc-pc-onboarding

# ... commands executed under lock ...
/home/denmark/.local/bin/ansible-playbook main.yml >> /tmp/ansible-logs.txt 2>&1
