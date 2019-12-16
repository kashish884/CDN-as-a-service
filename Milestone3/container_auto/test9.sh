#!/bin/bash
sudo bash test8.sh
sshpass -p EcE792net! ssh -tt ece792@192.168.122.23 "sshpass -p EcE792net! sudo bash /etc/ansible/cplayb/test8.sh"

file1=/home/ece792/cl.txt
namecl=$(cat "$file1")
sudo docker exec -it $namecl bash -c 'echo -e "root\nroot" | passwd root'
exit
