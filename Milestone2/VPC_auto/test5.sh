#!/bin/bash
#sshpass -p EcE792net! ssh ece792@192.168.122.23 "cd /etc/ansible/playbooks && ls"
#sudo bash test4.sh
sshpass -p EcE792net! ssh ece792@192.168.122.23 "sshpass -p EcE792net! sudo bash /etc/ansible/playbooks/test4.sh"
#sudo brctl addif T10sub vxlan0
#sshpass -p EcE792net! ssh ece792@192.168.122.23 "sshpass -p EcE792net! sudo brctl addif T10sub vxlan0"
