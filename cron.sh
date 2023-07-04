#!/usr/bin/env bash

# do stuff


(
flock -s 200

# ... commands executed under lock ...

cd /home/denmark/gdc-pc-onboarding

/home/denmark/.local/bin/ansible-playbook /home/denmark/gdc-pc-onboarding/main.yml >> /home/denmark/gdc-pc-onboarding/logs.txt 2>&1


echo "end" >> /home/denmark/gdc-pc-onboarding/logs.txt


) 200>/tmp/ansible-playbook.lock

